import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<MyApp> {
  final double _padding = 16.0;

  final Color _titleAppBarColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Kalkulatorqu",
            style: TextStyle(color: _titleAppBarColor),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              key: Key("expanded bagian atas"),
              flex: 1,
              child: Container(
                key: Key("expanded container bagian atas"),
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(_padding),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    AutoSizeText(
                      "0",
                      style: Theme.of(context).textTheme.headline2,
                      maxLines: 1,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              key: Key("expanded bagian bawah"),
              flex: 1,
              child: Container(
                key: Key("expanded container bagian bawah"),
                width: double.infinity,
                height: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}
