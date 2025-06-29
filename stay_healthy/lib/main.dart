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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
        child: Column(
          children: [
            TrackingElement(color: Color(0x40FFFFFF), iconData: Icons.directions_run, unit: "m", max:5000),
            TrackingElement(color: Color(0x4013199A), iconData: Icons.local_drink, unit: "ml", max:3000),
            TrackingElement(color: Color(0x40DA1717), iconData: Icons.dining, unit: "kcal", max: 2000),
          ]
        )

      ),
    );
  }
}

class TrackingElement extends StatefulWidget {
  const TrackingElement({super.key, required this.color, required this.iconData, required this.unit, required this.max});

  final Color color;
  final IconData iconData;
  final String unit;
  final double max;
  @override
  State<TrackingElement> createState() => _TrackingElementState();
}

class _TrackingElementState extends State<TrackingElement> {
  int _counter = 0;
  double _progress = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 200;
      _progress = _counter / widget.max;
    });
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: _incrementCounter,
        child: Column(
        children: <Widget>[
        Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32.0, 50.0, 32.0, 50.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(widget.iconData, color: Colors.white70, size: 50,),
                  Text(
                    '$_counter / ${widget.max.toInt()} ${widget.unit}',
                    style: const TextStyle(color: Colors.white70, fontSize: 35),
                  )
                ]
            )
        ),
        Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 5.0, vertical: 0.0),
            child: LinearProgressIndicator(
              value: _progress,
              color: widget.color,
              backgroundColor: const Color(0x40FFFFFF),
              minHeight: 12.0,
            )

        )
      ],
    )
    );
  }
}
