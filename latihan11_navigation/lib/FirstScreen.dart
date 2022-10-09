// ignore: file_names
import 'package:flutter/material.dart';
import 'package:latihan11_navigation/SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  static const pesan = 'Hallo, ini dari Screen Pertama';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const SecondScreen(pesan);
              },
            ))
          },
        ),
      ),
    );
  }
}
