import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CheckBox(),
    );
  }
}

class CheckBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RoundCheckBox(
              onTap: (selected) {},
            ),
            const SizedBox(height: 12),
            RoundCheckBox(
              onTap: (selected) {},
              size: 60,
              uncheckedColor: Colors.yellow,
            ),
            const SizedBox(height: 12),
            RoundCheckBox(
              onTap: (selected) {},
              border: Border.all(
                width: 4,
                color: Colors.red,
              ),
              uncheckedColor: Colors.red,
              uncheckedWidget: Icon(Icons.close, color: Colors.white),
            ),
            const SizedBox(height: 12),
            RoundCheckBox(
              onTap: (selected) {},
              uncheckedWidget: Icon(Icons.close),
            ),
            const SizedBox(height: 12),
            RoundCheckBox(
              onTap: (selected) {},
              uncheckedWidget: Icon(Icons.close),
              animationDuration: Duration(
                milliseconds: 50,
              ),
            ),
            const SizedBox(height: 12),
            RoundCheckBox(
              onTap: (selected) {},
              checkedWidget: Icon(Icons.mood, color: Colors.white),
              uncheckedWidget: Icon(Icons.mood_bad),
              animationDuration: Duration(
                seconds: 1,
              ),
            ),
            const SizedBox(height: 12),
            RoundCheckBox(
              onTap: (selected) {},
              uncheckedWidget: Icon(Icons.close),
              isChecked: true,
            ),
            const SizedBox(height: 12),
            RoundCheckBox(
              onTap: (selected) => print(selected),
              uncheckedWidget: Icon(Icons.close),
              isChecked: true,
              size: 120,
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
