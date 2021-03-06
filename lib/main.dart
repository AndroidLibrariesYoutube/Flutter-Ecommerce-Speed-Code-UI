import 'package:flutter/material.dart';
import 'package:flutter_audio_eco_video/screens/login.dart';
import 'package:flutter_audio_eco_video/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: 'DMSans',
      ),
      home: LoginScreen(),
      routes: <String,WidgetBuilder>{
        '/login':(BuildContext context) => new LoginScreen(),
        '/signup':(BuildContext context) => new SignUpScreen(),
      },
    );
  }
}
