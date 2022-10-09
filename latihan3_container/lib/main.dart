import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen()
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "Ini adalah Title",
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.green, width: 3),
          borderRadius: BorderRadius.circular(10),
          // shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 6),
              blurRadius: 10
            ),
          ]
        ),
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.all(20),
        child: const Text(
          'OK',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}