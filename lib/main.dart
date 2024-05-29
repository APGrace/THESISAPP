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

//  await loadModel();

  runApp(MyApp());
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
  List? _output;

  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/model/detect.tflite',
      labels: 'assets/model/labelmap.txt',
    );
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _output = output;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Classifier'),
      ),
      body: Container(
        child: Column(
          children: [
            _image == null ? Container() : Image.file(_image!),
            SizedBox(height: 20),
            _output == null ? Text('') : Text('${_output![0]['label']}')
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
