import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieListItems extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  ChewieListItems({
    @required this.videoPlayerController,
    this.looping,
    Key key,
  }) : super(key: key);
  @override
  _ChewieListItemsState createState() => _ChewieListItemsState();
}

class _ChewieListItemsState extends State<ChewieListItems> {
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      looping: widget.looping,
    );
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
