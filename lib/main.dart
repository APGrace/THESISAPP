import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camera/camera.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
late List<CameraDescription> cameras;
late Interpreter interpreter;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///main.dart
  ThemeHelper().changeTheme('primary');

  // get available cameras
  cameras = await availableCameras();

  await loadModel();

  runApp(MyApp());
}

Future<void> loadModel() async {
  try {
    interpreter = await Interpreter.fromAsset('assets/detect.tflite');
    print('Model loaded successfully');
  } catch (e) {
    print('Error loading model: $e');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'thesisapp',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.frameOneScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}

class ImageClassifier extends StatefulWidget {
  @override
  _ImageClassifierState createState() => _ImageClassifierState();
}

class _ImageClassifierState extends State<ImageClassifier> {
  File? _image;
  List<String>? _output;

  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  Future<void> classifyImage(File image) async {
    try {
      var input = await preprocessImage(image);

      var output = List.filled(1 * 3, 0)
          .reshape([1, 3]); // Assuming output shape is [1, 3]

      interpreter.run(input, output);

      setState(() {
        _output = output[0].map((e) => e.toString()).toList();
      });
    } catch (e) {
      print('Error during inference: $e');
    }
  }

  Future<List<List<double>>> preprocessImage(File image) async {
    return List.generate(1, (index) => List.generate(3, (index) => 0.0));
  }

  @override
  void dispose() {
    interpreter.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaf Disease Detection'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _image == null ? Container() : Image.file(_image!),
            SizedBox(height: 20),
            _output == null
                ? Text('')
                : Text(
                    'Prediction: ${_output!.join(', ')}',
                    style: TextStyle(fontSize: 20),
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var image =
              await ImagePicker().pickImage(source: ImageSource.gallery);
          if (image == null) return;
          setState(() {
            _image = File(image.path);
          });
          classifyImage(_image!);
        },
        child: Icon(Icons.image),
      ),
    );
  }
}
