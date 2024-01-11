import 'package:autoaid_garage/app.dart';
import 'package:autoaid_garage/utils/socket.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await _initApp();
  runApp(
    AutoAidGarage(),
  );
}

Future<void> _initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await FirebaseNotification().initNotifications();
}
