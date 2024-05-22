import 'package:flutter/material.dart';

class PostLikeCommentShare extends StatelessWidget {
  const PostLikeCommentShare({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // part1 Likes
          Row(
            children: [
              Row(
                children: [
                  // Like and  Love icons
                  Stack(
                    children: [
                      Container(
                          padding: EdgeInsets.all(2),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.red, borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.favorite_outlined,
                            color: Colors.white,
                            size: 20,
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image(
                            image: AssetImage("assets/images/like2.png"),
                            width: 25,
                            height: 25,
                          ))
                    ],
                  ),

                  Text("  1.2K",
                      style: TextStyle(
                        color: Color(0xffb0b3b8),
                        fontSize: 14,
                      ))
                ],
              )
            ],
          ),
          // part2 comments
          Row(
            children: [
              Row(
                children: [
                  Text("8 comment    ",
                      style: TextStyle(
                        color: Color(0xffb0b3b8),
                        fontSize: 14,
                      )),
                  Text("212 shares",
                      style: TextStyle(
                        color: Color(0xffb0b3b8),
                        fontSize: 14,
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
