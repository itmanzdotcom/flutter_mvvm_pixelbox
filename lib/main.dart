import 'package:flutter/material.dart';
import 'package:fmvvm_pixelbox/screen/user/user_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MVVM',
      theme: new ThemeData.dark(),
      home: new UserWidget(),
    );
  }
}
