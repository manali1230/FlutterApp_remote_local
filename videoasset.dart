import 'dart:ffi';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

AssetVideo() {
  var start = Icon(Icons.play_arrow);
  var pause = Icon(Icons.pause);
  var replay = Icon(Icons.restore);
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  _controller = VideoPlayerController.asset('assets/video.mp4');
  _initializeVideoPlayerFuture = _controller.initialize();

  var body = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
        child: VideoPlayer(_controller),
        height: 200,
      ),
      Row(
        children: <Widget>[
          IconButton(
              icon: start,
              onPressed: () {
                _controller.play();
                Fluttertoast.showToast(
                    msg: "Play",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }),
          IconButton(
              icon: pause,
              onPressed: () {
                _controller.pause();
                Fluttertoast.showToast(
                    msg: "Pause",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }),
          IconButton(
              icon: replay,
              onPressed: () {
                _controller.initialize();
                Fluttertoast.showToast(
                    msg: "Replay",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0);
              })
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )
    ],
  );
  return body;
}
