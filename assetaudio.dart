import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

AssetAudio() {
  var playicon = Icon(Icons.play_arrow);
  var stopicon = Icon(Icons.stop);
  var pauseicon = Icon(Icons.pause);
  var resumeicon = Icon(Icons.restore);

  var assetsAudioPlayer = AssetsAudioPlayer();
  assetsAudioPlayer.open(
    Audio("assets/audio.mp3"),
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      IconButton(
          icon: playicon,
          onPressed: () {
            //print('backward');
            assetsAudioPlayer.play();
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
            assetsAudioPlayer.stop();
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
            assetsAudioPlayer.pause();
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
            assetsAudioPlayer.playOrPause();
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
