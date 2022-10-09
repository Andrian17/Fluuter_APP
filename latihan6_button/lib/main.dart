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

      home: const ButtonSaya(),
    );
  }
}

class ButtonSaya extends StatefulWidget {
  const ButtonSaya({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ButtonSaya();

}

class _ButtonSaya extends State {
  String? lengauge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coba Tombol"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Text("Elv Button")
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Text Button')
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Outlined Button'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 30),
            // width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DropdownButton<String>(
                  items: const <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                      value: 'Dart',
                      child: Text('Dart'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Kotlin',
                      child: Text('Kotlin'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'PHP',
                      child: Text('PHP'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Java',
                      child: Text('Java'),
                    ),
                  ],
                  value: lengauge,
                  hint: const Text('Select Lengauge'),
                  onChanged: (String? value) { 
                    setState(() {
                      lengauge = value;
                    });
                  },
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}