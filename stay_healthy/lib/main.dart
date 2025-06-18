import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        scaffoldBackgroundColor: const Color(0xFF292929),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
//
  //void _incrementCounter() {
  //  setState(() {
  //    _counter++;
  //  });
  //}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
        child: Column(
          children: [
            TrackingElement(),
            TrackingElement(),
            TrackingElement(),
          ],
        )

      ),
    );
  }
}

class TrackingElement extends StatefulWidget {
  const TrackingElement({super.key});

  @override
  State<TrackingElement> createState() => _TrackingElementState();
}

class _TrackingElementState extends State<TrackingElement> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32.0, 25.0, 32.0, 25.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.directions_run,
                    color: Colors.white70,
                    size: 50,
                  ),
                  Text(
                    '1000 / 5000 m',
                    style: TextStyle(color: Colors.white70, fontSize: 35),
                  )
                ]
            )
        ),
        Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 5.0, vertical: 0.0),
            child: const LinearProgressIndicator(
              value: 0.5,
              color: Colors.green,
              backgroundColor: Color(0x40FFFFFF),
              minHeight: 12.0,
            )

        )
      ],
    );
  }
}
