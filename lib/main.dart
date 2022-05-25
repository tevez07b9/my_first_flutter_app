// TOOK ME HOURS TO GET THE SETUP DONE
// REACT NATIVE HAS SUCH A SIMPLE SETUP

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter is horrible',
      home: TextFieldScreen(),
    );
  }
}

class TextFieldScreen extends StatefulWidget {
  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final _controller = TextEditingController();
  String name = "Flutter is horrible, React Native Rocks!!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),
          Container(
            child: TextField(
              controller: _controller,
            ),
            padding: EdgeInsets.all(32),
          ),
          Container(
            child: TextButton(
              child: Text("Show Text"),
              onPressed: () {
                // Copied concept from React
                setState(() {
                  name = _controller.text;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
