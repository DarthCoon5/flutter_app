import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            style: const TextStyle(
              fontFamily: "LeagueGothic",
              fontSize: 30.0,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RichText(
                text: TextSpan(
                    style: const TextStyle(
                        fontSize: 50.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.blue,
                        fontFamily: "LeagueGothic"),
                    children: <TextSpan>[
                  const TextSpan(text: "This is\n"),
                  const TextSpan(text: "Flutter App "),
                  TextSpan(
                      text: "Demo v1",
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.blue[900]))
                ])),
            const Text(
              'Hello, World!',
              style: TextStyle(
                  fontSize: 40.0, color: Colors.black87, fontFamily: "Smooch"),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Number plus:',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ])
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
