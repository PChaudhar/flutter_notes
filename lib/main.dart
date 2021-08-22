import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';


void main() => runApp(NoteApp());

class NoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteApp',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}