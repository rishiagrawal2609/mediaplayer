import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:mediaplayer/AudioPlayer.dart';
import 'sideMenu.dart';
import 'videoPlayer.dart';

appbar() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);
  return AppBar(
    title: Text('MediaPlayer'),
    backgroundColor: Colors.green,
  );
}

myApp() {
  return MaterialApp(
    home: Scaffold(
      drawer: sideMenu(),
      appBar: appbar(),
      body: vidplayer(),
    ),
  );
}
