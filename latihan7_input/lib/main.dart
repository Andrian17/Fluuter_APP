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
      home: const InputSaya()
    );
  }
}

class InputSaya extends StatefulWidget {
  const InputSaya({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputSaya();

}

class _InputSaya extends State<InputSaya> {

  String _name = '';
  bool modeApp = false;
  String? leng;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukkan nama....',
                labelText: 'Nama Kamu'
              ),
              onChanged: ( String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hy, nama saya $_name'),
                    );
                  }
                );
              },
            ),
            Switch(
              value: modeApp,
              onChanged: (bool value) {
                setState(() {
                  modeApp = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(modeApp ? 'LightOn' : 'LightOff'),
                    duration: const Duration(seconds: 1),
                  )
                );
              }
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Dart',
                groupValue: leng,
                onChanged: (String? value) {
                  setState(() {
                    leng = value;
                    showSnackBar();
                  });
                },
              ),
              title: const Text('Dart'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Kotlin',
                groupValue: leng,
                onChanged: (String? value) {
                  setState(() {
                    leng = value;
                    showSnackBar();
                  });
                },
              ),
              title: const Text('Kotlin'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'PHP',
                groupValue: leng,
                onChanged: (String? value) {
                  setState(() {
                    leng = value;
                    showSnackBar();
                  });
                },
              ),
              title: const Text('PHP'),
            ),
            ListTile(
              leading: Checkbox(
                value: agree, 
                onChanged: (bool? value) {
                  setState(() {
                    agree = value!;
                    showSnackBar2();
                  });
                },
              ),
              title: const Text('Agree / Diagree'),
            ),
          ],
        ),
      )
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$leng selected'),
        duration: const Duration(seconds: 1)
      ),
    );
  }
  void showSnackBar2() {
    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
        content: Text(agree ? 'Setuju' : 'Tidak'), 
        duration: const Duration(seconds: 1)
      )
    );
  }
}