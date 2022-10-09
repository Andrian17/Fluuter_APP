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
      home: ScrollingScreen(),
    );
  }
}

// ignore: must_be_immutable
class ScrollingScreen extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Scrolling Test',
        ),
      ),
      // body: ListView(
      //   children: numberList.map((number) {
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //           color: Colors.grey, border: Border.all(color: Colors.black)),
      //       child: Center(
      //           child: Text(
      //         '$number',
      //         style: const TextStyle(fontSize: 50),
      //       )),
      //     );
      //   }).toList(),
      // ),

      // // ListView Builder
      // body: ListView.builder(
      //   itemCount: numberList.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: Center(
      //         child: Text(
      //           '${numberList[index]}',
      //           style: const TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     );
      //   },
      // ),

      // Listview separated
      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
