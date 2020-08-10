import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:mediaplayer/playlist.dart';

body() {
  final ap = AssetsAudioPlayer();
  ap.open(Playlist(audios: songs),
      loopMode: LoopMode.playlist,
      showNotification: true,
      notificationSettings: NotificationSettings(
        customStopIcon: AndroidResDrawable(name: "ic_stop_custom"),
        customPauseIcon: AndroidResDrawable(name: "ic_pause_custom"),
        customPlayIcon: AndroidResDrawable(name: "ic_play_custom"),
        customPrevIcon: AndroidResDrawable(name: "ic_prev_custom"),
        customNextIcon: AndroidResDrawable(name: "ic_next_custom"),
      ));
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Column(
      children: [
        Image.asset('assets/img/music.jpg'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: Row(children: <Widget>[
            SizedBox(
              height: 100,
              child: RaisedButton(
                onPressed: () {
                  ap.previous(keepLoopMode: true);
                },
                child: Icon(
                  Icons.skip_previous,
                  size: 40,
                ),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 100,
              child: RaisedButton(
                onPressed: () {
                  ap.pause();
                },
                child: Icon(
                  Icons.pause,
                  size: 40,
                ),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 100,
              child: RaisedButton(
                onPressed: () {
                  ap.play();
                },
                child: Icon(
                  Icons.play_arrow,
                  size: 40,
                ),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 100,
              child: RaisedButton(
                onPressed: () {
                  ap.next();
                },
                child: Icon(
                  Icons.skip_next,
                  size: 40,
                ),
                color: Colors.blue,
              ),
            ),
          ]),
        ),
        Text('All the Songs are palyed from the assets')
      ],
    ),
  );
}
