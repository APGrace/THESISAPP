import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:camera/camera.dart';

import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///main.dart
  ThemeHelper().changeTheme('primary');

  // get available cameras
  cameras = await availableCameras();

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
