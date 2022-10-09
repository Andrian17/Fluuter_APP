// ignore: file_names
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String pesan;

  const SecondScreen(this.pesan, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pesan),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali'))
          ],
        ),
      ),
    );
  }
}
