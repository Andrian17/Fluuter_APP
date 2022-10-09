import 'package:flutter/material.dart';
import 'package:latiahan12_responsivelayout/home/responsive_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.blueGrey,

      // Media Query
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Text(
      //       'Screen width: ${screenSize.width.toStringAsFixed(2)}',
      //       style: const TextStyle(color: Colors.white),
      //       textAlign: TextAlign.center,
      //     ),
      //     Text(
      //       'Oreintation: $orientation',
      //       style: const TextStyle(color: Colors.white),
      //       textAlign: TextAlign.center,
      //     ),
      //   ],
      // ),
      body: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                    style: const TextStyle(color: Colors.white60),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'LayoutBuilder" ${constraints.maxWidth}',
                    style: const TextStyle(color: Colors.amber),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ResponsivePage()));
                      },
                      child: const Text("Ok"))
                ],
              );
            }),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.black),
                        textAlign: TextAlign.center),
                    Text(
                      'LayoutBuilder: ${constraints.maxWidth}',
                      style: const TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
