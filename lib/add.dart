import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Nur',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: GamePage(),
);
}
}

class GamePage extends StatefulWidget {
@override
_GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
int _score = 0;

void _incrementScore() {
setState(() {
_score += 1;
});
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Flutter Nur'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Text(
'Nursultan:',
style: TextStyle(
fontSize: 24,
),
),
Text(
'$_score',
style: TextStyle(
fontSize: 48,
fontWeight: FontWeight.bold,
),
),
],
),
),
floatingActionButton: FloatingActionButton(
onPressed: _incrementScore,
child: Icon(Icons.add),
),
);
}
}

