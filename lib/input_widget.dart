import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const InputRadio(), // untuk halaman home
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: const Text(
                  'Farm House Lembang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_month),
                        SizedBox(height: 8.0),
                        Text('Open Everyday'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_alarm),
                        SizedBox(height: 8.0),
                        Text('09:00 - 20:00'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        SizedBox(height: 8.0),
                        Text('RP 25.000'),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        )
    );
  }

}

// Button Widget
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: DropdownButton<String>(
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
              value:'Dart',
              child: Text('Dart')
          ),
          DropdownMenuItem<String>(
              value:'Kotlin',
              child: Text('Kotlin')
          ),
          DropdownMenuItem<String>(
              value:'Swift',
              child: Text('Swift')
          ),
        ],
        value: language,
        hint: const Text('Select Language'),
        onChanged: (String? value) {
          setState(() {
            language = value;
          });
        },
      ),
    );
  }
}

// Input Widget

class InputWidget extends StatefulWidget {
  const InputWidget({Key? key}) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  // String _name = '';

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column (
              children: [
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Write your Name here...',
                    labelText: 'Your Name',
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Hello, ${_controller.text}'),
                          );
                        });
                  },
                )
              ],
            )
        )
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// Switch Button

class InputSwitch extends StatefulWidget {
  const InputSwitch({Key? key}) : super(key: key);

  @override
  State<InputSwitch> createState() => _InputSwitchState();
}

class _InputSwitchState extends State<InputSwitch> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: Switch(
          value: lightOn,
          onChanged: (bool value) {
            setState(() {
              lightOn = value;
            });

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(lightOn ? 'Light On' : 'Light Off'),
                duration: const Duration(seconds: 2),
              ),
            );
          },
        )
    );
  }
}

// Radio Button

class InputRadio extends StatefulWidget {
  const InputRadio({Key? key}) : super(key: key);

  @override
  State<InputRadio> createState() => _InputRadioState();
}

class _InputRadioState extends State<InputRadio> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
                leading: Radio<String>(
                  value: 'Dart',
                  groupValue: language,
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text('Dart')
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Kotlin',
                groupValue: language,
                onChanged: (String? value) {
                  setState(() {
                    language = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text('Kotlin'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Swift',
                groupValue: language,
                onChanged: (String? value) {
                  setState(() {
                    language = value;
                    showSnackbar();
                  });
                },
              ),
              title: Text('Swift'),
            )
          ],
        )
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$language selected'),
          duration: const Duration(seconds: 2),
        )
    );
  }
}