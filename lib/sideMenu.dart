import 'package:flutter/material.dart';
import 'AudioPlayer.dart';
import 'main.dart';
import 'vidsetup.dart';

sideMenu() {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'MediaPlayer',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          decoration: BoxDecoration(color: Colors.green),
        ),
        ListTile(
          leading: Icon(Icons.movie),
          title: Text('VideoPlayer'),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.audiotrack),
          title: Text('AudioPlayer'),
          onTap: () => {
            Navigator.pop(x),
          },
        ),
      ],
    ),
  );
}
