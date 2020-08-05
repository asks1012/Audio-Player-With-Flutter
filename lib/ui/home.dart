import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

myapp() {
  var assetsAudioPlayer = AssetsAudioPlayer.withId('0');
  FlutterStatusbarcolor.setStatusBarColor(Colors.blue[900]);
  return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          elevation: 20,
          backgroundColor: Colors.blue[900],
          leading: Icon(Icons.music_note, color: Colors.amber, size: 46),
          title: Row(
            children: <Widget>[
              Text('FLUTTER ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                'Player',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.graphic_eq,
                size: 28,
              ),
              onPressed: () => print('hi'),
            )
          ],
        ),

        //body
        body: Container(
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 75,
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.offline_pin,
                      size: 34,
                      color: Colors.amber,
                    ),
                    Text(
                      '   OFFLINE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.amber),
                    ),
                    Text(
                      ' Audio',
                    )
                  ],
                ),
              ),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 200,
                        padding: EdgeInsets.only(right: 2),
                        margin: EdgeInsets.only(
                            top: 13, bottom: 13, right: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('images/headset.jpg'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.amber),
                          boxShadow: [
                            BoxShadow(blurRadius: 10, color: Colors.grey[700]),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(''),
                            Text(''),
                            Text(
                              'Iphone',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(
                              'Ringtone',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(''),
                            Text(''),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  padding: EdgeInsets.only(top: 20),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 45,
                                    color: Colors.amber,
                                  ),
                                  onPressed: () async {
                                    try {
                                      await assetsAudioPlayer.open(
                                        Audio('assets/audios/iphone.mp3'),
                                        showNotification: true,
                                      );
                                    } catch (t) {}
                                  },
                                ),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.pause,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () =>
                                        assetsAudioPlayer.playOrPause()),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.stop,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () => assetsAudioPlayer.stop()),
                              ],
                            )
                          ],
                        )),
                    Container(
                        width: 200,
                        padding: EdgeInsets.only(right: 2),
                        margin: EdgeInsets.only(
                            top: 13, bottom: 13, right: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('images/headset.jpg'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.amber),
                          boxShadow: [
                            BoxShadow(blurRadius: 10, color: Colors.grey[700]),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(''),
                            Text(''),
                            Text(
                              'Best_Ever',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(
                              'Ringtone',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(''),
                            Text(''),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  padding: EdgeInsets.only(top: 20),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 45,
                                    color: Colors.amber,
                                  ),
                                  onPressed: () async {
                                    try {
                                      await assetsAudioPlayer.open(
                                        Audio('assets/audios/best_ever_ringtone.mp3'),
                                        showNotification: true,
                                      );
                                    } catch (t) {}
                                  },
                                ),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.pause,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () =>
                                        assetsAudioPlayer.playOrPause()),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.stop,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () => assetsAudioPlayer.stop()),
                              ],
                            )
                          ],
                        )),
                    Container(
                        width: 200,
                        padding: EdgeInsets.only(right: 2),
                        margin: EdgeInsets.only(
                            top: 13, bottom: 13, right: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('images/headset.jpg'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.amber),
                          boxShadow: [
                            BoxShadow(blurRadius: 10, color: Colors.grey[700]),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(''),
                            Text(''),
                            Text(
                              'Best',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(
                              'Melody',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(''),
                            Text(''),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  padding: EdgeInsets.only(top: 20),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 45,
                                    color: Colors.amber,
                                  ),
                                  onPressed: () async {
                                    try {
                                      await assetsAudioPlayer.open(
                                        Audio('assets/audios/best_melody.mp3'),
                                        showNotification: true,
                                      );
                                    } catch (t) {}
                                  },
                                ),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.pause,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () =>
                                        assetsAudioPlayer.playOrPause()),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.stop,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () => assetsAudioPlayer.stop()),
                              ],
                            )
                          ],
                        )),
                    Container(
                        width: 200,
                        padding: EdgeInsets.only(right: 2),
                        margin: EdgeInsets.only(
                            top: 13, bottom: 13, right: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('images/headset.jpg'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.amber),
                          boxShadow: [
                            BoxShadow(blurRadius: 10, color: Colors.grey[700]),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(''),
                            Text(''),
                            Text(
                              'Best',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(
                              'Ringtone',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(''),
                            Text(''),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  padding: EdgeInsets.only(top: 20),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 45,
                                    color: Colors.amber,
                                  ),
                                  onPressed: () async {
                                    try {
                                      await assetsAudioPlayer.open(
                                        Audio('assets/audios/best_ring_tone.mp3'),
                                        showNotification: true,
                                      );
                                    } catch (t) {}
                                  },
                                ),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.pause,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () =>
                                        assetsAudioPlayer.playOrPause()),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.stop,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () => assetsAudioPlayer.stop()),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                height: 75,
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.wifi,
                      size: 34,
                      color: Colors.amber,
                    ),
                    Text(
                      '   ONLINE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.amber),
                    ),
                    Text(
                      ' Audio',
                    )
                  ],
                ),
              ),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 200,
                        padding: EdgeInsets.only(right: 2),
                        margin: EdgeInsets.only(
                            top: 13, bottom: 13, right: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('images/headset.jpg'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.amber),
                          boxShadow: [
                            BoxShadow(blurRadius: 10, color: Colors.grey[700]),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(''),
                            Text(''),
                            Text(
                              'Classic',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(
                              'Guitar',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(''),
                            Text(''),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  padding: EdgeInsets.only(top: 20),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 45,
                                    color: Colors.amber,
                                  ),
                                  onPressed: () async {
                                    try {
                                      await assetsAudioPlayer.open(
                                        Audio.network('https://raw.githubusercontent.com/asks1012/flutter-audio/master/classic_guitar.mp3'),
                                        showNotification: true,
                                      );
                                    } catch (t) {}
                                  },
                                ),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.pause,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () =>
                                        assetsAudioPlayer.playOrPause()),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.stop,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () => assetsAudioPlayer.stop()),
                              ],
                            )
                          ],
                        )),
                    Container(
                        width: 200,
                        padding: EdgeInsets.only(right: 2),
                        margin: EdgeInsets.only(
                            top: 13, bottom: 13, right: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('images/headset.jpg'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.amber),
                          boxShadow: [
                            BoxShadow(blurRadius: 10, color: Colors.grey[700]),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(''),
                            Text(''),
                            Text(
                              'Classic',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(
                              'Ring',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(''),
                            Text(''),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  padding: EdgeInsets.only(top: 20),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 45,
                                    color: Colors.amber,
                                  ),
                                  onPressed: () async {
                                    try {
                                      await assetsAudioPlayer.open(
                                        Audio.network('https://raw.githubusercontent.com/asks1012/flutter-audio/master/classic_ring.mp3'),
                                        showNotification: true,
                                      );
                                    } catch (t) {}
                                  },
                                ),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.pause,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () =>
                                        assetsAudioPlayer.playOrPause()),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.stop,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () => assetsAudioPlayer.stop()),
                              ],
                            )
                          ],
                        )),
                    Container(
                        width: 200,
                        padding: EdgeInsets.only(right: 2),
                        margin: EdgeInsets.only(
                            top: 13, bottom: 13, right: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('images/headset.jpg'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.amber),
                          boxShadow: [
                            BoxShadow(blurRadius: 10, color: Colors.grey[700]),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(''),
                            Text(''),
                            Text(
                              'Melody',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(
                              'Rush',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(''),
                            Text(''),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  padding: EdgeInsets.only(top: 20),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 45,
                                    color: Colors.amber,
                                  ),
                                  onPressed: () async {
                                    try {
                                      await assetsAudioPlayer.open(
                                        Audio.network('https://raw.githubusercontent.com/asks1012/flutter-audio/master/melody_rush.mp3'),
                                        showNotification: true,
                                      );
                                    } catch (t) {}
                                  },
                                ),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.pause,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () =>
                                        assetsAudioPlayer.playOrPause()),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.stop,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () => assetsAudioPlayer.stop()),
                              ],
                            )
                          ],
                        )),
                    Container(
                        width: 200,
                        padding: EdgeInsets.only(right: 2),
                        margin: EdgeInsets.only(
                            top: 13, bottom: 13, right: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('images/headset.jpg'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.amber),
                          boxShadow: [
                            BoxShadow(blurRadius: 10, color: Colors.grey[700]),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(''),
                            Text(''),
                            Text(
                              'Melody',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(
                              'Trance2010',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            Text(''),
                            Text(''),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  padding: EdgeInsets.only(top: 20),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 45,
                                    color: Colors.amber,
                                  ),
                                  onPressed: () async {
                                    try {
                                      await assetsAudioPlayer.open(
                                        Audio.network('https://raw.githubusercontent.com/asks1012/flutter-audio/master/melody_trance_2010.mp3'),
                                        showNotification: true,
                                      );
                                    } catch (t) {}
                                  },
                                ),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.pause,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () =>
                                        assetsAudioPlayer.playOrPause()),
                                IconButton(
                                    padding: EdgeInsets.only(top: 20),
                                    icon: Icon(
                                      Icons.stop,
                                      size: 45,
                                      color: Colors.amber,
                                    ),
                                    onPressed: () => assetsAudioPlayer.stop()),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        )
        //body

        ),
    debugShowCheckedModeBanner: false,
  );
}
