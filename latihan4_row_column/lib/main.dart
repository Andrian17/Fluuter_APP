import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      home: const TampilanSaya()
    );
  }
}

class TampilanSaya extends StatelessWidget {
  const TampilanSaya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Andrian'),
        leading: IconButton( 
          icon: const Icon( Icons.menu_book ), 
          onPressed: () {}
        )
      ),

      // Mengatur Row
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   // mainAxisAlignment: MainAxisAlignment.start,
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.end,
      //   children: const <Widget>[
      //     Icon(Icons.share),
      //     Icon(Icons.thumb_up),
      //     Icon(Icons.thumb_down)
      //   ],
      // ),

      // Mengatur Column
      // body: Column(
      //   children: const <Widget>[
      //     Text( 
      //       'Ini adalah column',
      //       style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      //     ),
      //     Text(
      //       'Ini Judul 2',
      //     ),
      //   ],
      // ),

      // Latihan
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column( 
            children: [
              const Text(
                'Lagu Surat Cinta Untuk Starla', 
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              const Text('telah habis sudah cinta ini'),
              const Text('tak lagi tersisa untuk dunia'),
              const Text('telah aku habiskan sisa cintaku hanya untukmu'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.abc),
                  Icon(Icons.menu),
                  Icon(Icons.share)
                ],
              )
            ],

           ),
           Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Ini yang keduan",
                  style: TextStyle(fontWeight: FontWeight.bold)
                  ),
              )
            ],
           )
        ],
      ),
    );
  }
}