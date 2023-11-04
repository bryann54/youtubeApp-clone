// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:youtube_clone/data.dart';

class VideoCard extends StatelessWidget {
  final Video video;
  const VideoCard({
    Key? key,
    required this.video, required bool isPlaying,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        Image.network(
          video.thumbNailUrl,
          height: 220,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
            bottom: 15,
            right: 15,
            child: Container(
              color: Colors.black,
            ))
      ]),
    ]);
  }
}
