import 'package:flutter/material.dart';

import 'myApp.dart';

void main() => runApp(MyApp());
var x;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    x = context;
    return myApp();
  }
}
