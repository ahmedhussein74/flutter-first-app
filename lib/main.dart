import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:odc/home_screen.dart';
import 'package:odc/signup_screen.dart';
import 'package:odc/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'main',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: const Text(
          'La Vie',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        nextScreen: const MyHomePage(title: 'Flutter Demo Home Page'),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.green,
      ),
      routes: {
        'log': (context) => const Login(),
        'sign': (context) => const Signup(),
        'home':(context) => const Home(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}
