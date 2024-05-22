import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class PostFotter extends StatelessWidget {
  const PostFotter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Like
          Row(
            children: [
              LikeButton(),
              Text(
                " Like",
                style: TextStyle(color: Color(0xffb0b3b8)),
              ),
            ],
          ),
          //comment
          Row(
            children: [
              Image(
                image: AssetImage("assets/images/comment.png"),
                width: 26,
                height: 26,
              ),
              Text(
                " Comment",
                style: TextStyle(color: Color(0xffb0b3b8)),
              ),
            ],
          ),
          //share
          Row(
            children: [
              Icon(Icons.send_rounded, color: Color(0xffb0b3b8)),
              Text(
                " Share",
                style: TextStyle(color: Color(0xffb0b3b8)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
