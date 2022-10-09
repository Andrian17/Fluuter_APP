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
        // Setting Font Secara Default
        fontFamily: 'Oswald',
        primarySwatch: Colors.blue,
      ),
      home: const FontSaya()
    );
  }
}

class FontSaya extends StatelessWidget {
  const FontSaya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Coba Font',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 30
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Text(
          'Hallo saya mencoba Font Oswald',
          style: TextStyle(
            // fontFamily: 'Oswald',
            fontSize: 42
          ),
        ),
      ),
    );
  }
}
