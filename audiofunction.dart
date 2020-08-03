import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:audioplayers/audioplayers.dart';

FuncAudio() {
  var playicon = Icon(Icons.play_arrow);
  var stopicon = Icon(Icons.stop);
  var pauseicon = Icon(Icons.pause);
  var resumeicon = Icon(Icons.restore);
  var playaudio = AudioPlayer();
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      IconButton(
          icon: playicon,
          onPressed: () {
            //print('backward');
            playaudio.play('https://www.kozco.com/tech/piano2.wav');
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
          icon: stopicon,
          onPressed: () {
            //print('forward');
            playaudio.stop();
            Fluttertoast.showToast(
                msg: "Stop",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0);
          }),
      IconButton(
          icon: pauseicon,
          onPressed: () {
            //print('forward');
            playaudio.pause();
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
          icon: resumeicon,
          onPressed: () {
            //print('forward');
            playaudio.resume();
            Fluttertoast.showToast(
                msg: "resume",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0);
          }),
    ],
  );
}
