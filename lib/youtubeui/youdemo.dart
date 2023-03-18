import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Dem extends StatefulWidget {
  @override
  State<Dem> createState() => _DemState();
}

class _DemState extends State<Dem> {
  late VideoPlayerController _controller;
  //initialize the video controller
  @override
  void initState() {
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //     child: Icon(
      //         _controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      //     onPressed: () {
      //       setState(() {
      //         _controller.value.isPlaying
      //             ? _controller.pause()
      //             : _controller.play();
      //       });
      //     }),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 500,
            child: _controller.value.isInitialized
                ? VideoPlayer(_controller)
                : Container(),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              },
              child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow))
        ],
      ),
    );
  }
}
