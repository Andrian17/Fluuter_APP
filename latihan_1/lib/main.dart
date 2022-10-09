import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Pertama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello And'),
        ),
        body: const Center(
          child: BiggerText(text: "Ini adalah Tombol")
        ),
      ),
    );
  }
}

//Stateles
class Heading extends StatelessWidget {
  final String text;
  const Heading({Key? key, required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold
      ),
    );
  }
}


// Stateful
class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);
  
  @override
  _BiggerTextState createState() => _BiggerTextState();
  
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  bool status = false;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text( widget.text, style: TextStyle(fontSize:  _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
              
            });
          },
        ),

      ],
    );
   
  }
}