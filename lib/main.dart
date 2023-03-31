import 'package:flutter/material.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 60),
        alignment: Alignment.topCenter,
        child: RichText(
          text: const TextSpan(
              text: "Pokedex.",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 50),
        alignment: Alignment.topCenter,
        child: RichText(
          text: const TextSpan(
              text: "Welcome to Pokedex",
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: RichText(
          text: const TextSpan(
              text: "You can find Your Favorite pokemon here",
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 120),

        alignment: Alignment.center,
        child: Image.asset(
          'assets/image/pokemon.png',
          height: 150,
        ),
      ),
    ]
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
           floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.yellow,
             onPressed: _incrementCounter,
            tooltip: 'Increment',
             child: const Icon(Icons.arrow_forward),
          ),
    )
    );
  }
}
