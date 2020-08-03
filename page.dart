import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:All/UI/audiofunction.dart';
import 'package:All/UI/assetaudio.dart';
import 'package:All/UI/videourl.dart';
import 'package:All/UI/internetvideo.dart';

View() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.red);

  var container = PageView(
    children: <Widget>[
      Card(
        margin: EdgeInsets.all(30),
        color: Colors.white54,
        elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Piano Internet',
              style: TextStyle(color: Colors.black54, fontSize: 20),
            ),
            Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShThIHrrvm2iXwaKiLnrINCJu8tyjQIZ_aif-mikJgwC7LTFU&s'),
            FuncAudio(),
          ],
        ),
      ),
      Card(
        color: Colors.white54,
        elevation: 20,
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Piano Assets',
              style: TextStyle(color: Colors.black54, fontSize: 20),
            ),
            Image.asset('assets/2.jpg'),
            AssetAudio(),
          ],
        ),
      ),
      Card(
        color: Colors.white54,
        elevation: 20,
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Video Assets',
              style: TextStyle(color: Colors.black54, fontSize: 20),
            ),
            AssetVideo(),
          ],
        ),
      ),
      Card(
        color: Colors.white54,
        elevation: 20,
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Internet Video ',
              style: TextStyle(color: Colors.black54, fontSize: 20),
            ),
            InternetVideo(),
          ],
        ),
      ),
    ],
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.teal,
      ),
      body: container,
    ),
  );
}
