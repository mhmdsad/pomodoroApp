import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pomodoro App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Controllers for text fields
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final TextEditingController textController3 = TextEditingController();

  void displayText() {
    final text1 = textController1.text;
    final text2 = textController2.text;
    final text3 = textController3.text;

    // Display SnackBar with the entered text
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Text 1: $text1, Text 2: $text2, Text 3: $text3'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Three Text Fields'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text Field 1
            TextField(
              controller: textController1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter First Text',
              ),
            ),
            SizedBox(height: 16),
            // Text Field 2
            TextField(
              controller: textController2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second Text',
              ),
            ),
            SizedBox(height: 16),
            // Text Field 3
            TextField(
              controller: textController3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Third Text',
              ),
            ),
            SizedBox(height: 32),
            // Submit Button
            ElevatedButton(
              onPressed: displayText,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose controllers to free up resources
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    super.dispose();
  }
}
