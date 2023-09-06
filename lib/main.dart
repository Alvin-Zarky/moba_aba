import 'package:flutter/material.dart';
import 'package:moba_aba/page/main_screen.dart';
import 'package:flutter/services.dart';
// import 'package:moba_aba/page/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ABA App',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
