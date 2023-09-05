
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

class NBSSport extends StatefulWidget {
  const NBSSport({Key? key}) : super(key: key);

  @override
  _NBSSportState createState() => _NBSSportState();
}

class _NBSSportState extends State<NBSSport> {
  bool fullscreen = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NBSSport TV',
      home: Scaffold(
        appBar: fullscreen == false
          ? AppBar(
              backgroundColor: Colors.blue,
              title: const Image(
                image: AssetImage('assets/images/nbs-sport.png'),
                fit: BoxFit.fitHeight,
                height: 50,
              ),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          : null,
        body: Padding(
          padding:
              fullscreen ? EdgeInsets.zero : const EdgeInsets.only(top: 32.0),
          child: YoYoPlayer(
            aspectRatio: 16 / 9,
            url:
                "http://197.239.30.29/readymedia/stream/NBS_Sport/20-hls/live-media.m3u8",
            allowCacheFile: true,
            onCacheFileCompleted: (files) {
              if (kDebugMode) {
                print('Cached file length ::: ${files?.length}');
              }

              if (files != null && files.isNotEmpty) {
                for (var file in files) {
                  if (kDebugMode) {
                    print('File path ::: ${file.path}');
                  }
                }
              }
            },
            onCacheFileFailed: (error) {
              if (kDebugMode) {
                print('Cache file error ::: $error');
              }
            },
            videoStyle: const VideoStyle(
              qualityStyle: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              forwardAndBackwardBtSize: 30.0,
              playButtonIconSize: 40.0,
              playIcon: Icon(
                Icons.add_circle_outline_outlined,
                size: 40.0,
                color: Colors.white,
              ),
              pauseIcon: Icon(
                Icons.remove_circle_outline_outlined,
                size: 40.0,
                color: Colors.white,
              ),
              videoQualityPadding: EdgeInsets.all(5.0),
              // showLiveDirectButton: true,
              // enableSystemOrientationsOverride: false,
            ),
            videoLoadingStyle: const VideoLoadingStyle(
              loading: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/nbs-sport.png'),
                      fit: BoxFit.fitHeight,
                      height: 50,
                    ),
                    SizedBox(height: 16.0),
                    Text("Loading station..."),
                  ],
                ),
              ),
            ),
            onFullScreen: (value) {
              setState(() {
                if (fullscreen != value) {
                  fullscreen = value;
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
