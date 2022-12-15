import 'package:flutter/material.dart';
import 'package:remake_spotify/pages/get_started.dart';
import 'package:remake_spotify/style.dart';

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
      title: 'Spotify Remake',
      home: const GetStartedPage(),
    );
  }
}
