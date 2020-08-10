import 'vidsetup.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

vidplayer() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 200),
    child: ListView(
      children: <Widget>[
        ChewieListItems(
          videoPlayerController:
              VideoPlayerController.asset('assets/videos/alone.mp4'),
          looping: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text('This video is playing through assets'),
        ),
      ],
    ),
  );
}
