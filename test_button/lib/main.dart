import 'package:flutter/material.dart';

void main() {
  runApp(const TestButton());
}

class TestButton extends StatelessWidget {
  const TestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter button test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TestButtonHomePage(title: 'Button Test Home Page'),
    );
  }
}

class TestButtonHomePage extends StatefulWidget {
  const TestButtonHomePage({super.key, required this.title});

  final String title;

  @override
  State<TestButtonHomePage> createState() => _TestButtonHomePageState();
}

class _TestButtonHomePageState extends State<TestButtonHomePage> {
  String _buttonPressed = "Button hadn't been pressed";

  void _changeText() {
    setState(_getNewText);
  }

  void _getNewText() {
    _buttonPressed = "User pressed the button";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Image.asset("assets/images/avatar.jpg"),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("*Current button status*"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Text(_buttonPressed),
            ),
            FloatingActionButton(
              onPressed: _changeText,
              tooltip: 'Modify text ',
              child: const Icon(Icons.radio),
            ),
          ])),
    );
  }
}
