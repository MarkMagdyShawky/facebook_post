import 'package:facebook_post/core/resource/imageManager.dart';
import 'package:facebook_post/core/resource/stringManager.dart';
import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 15),
          child: Text(
           StringManager.postCaption,
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
          ),
        ),
        Image(image: AssetImage(ImageManager.postImage1)),
      ],
    );
  }
}
