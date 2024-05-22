import 'package:facebook_post/core/resource/imageManager.dart';
import 'package:facebook_post/core/resource/stringManager.dart';
import 'package:flutter/material.dart';

class PostAvatar extends StatelessWidget {
  const PostAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        //make big gap between them
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //part 1 image and name
          Row(
            children: [
              // the avatar
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(ImageManager.avtar),
              ),
              SizedBox(
                width: 7,
              ),
              // name and date and it's icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // name
                  Text(
                    StringManager.profileName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // date and it's icon
                  Row(
                    children: [
                      Text(StringManager.days,
                          style: TextStyle(
                            color: Color(0xffb0b3b8),
                            fontSize: 14,
                          )),
                      Icon(
                        Icons.group,
                        color: Color(0xffb0b3b8),
                        size: 20,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          // part2 the 2 icons
          Row(
            children: [
              Icon(
                Icons.keyboard_control_outlined,
                color: Colors.white,
                size: 21,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.close,
                color: Colors.white,
                size: 21,
              )
            ],
          )
        ],
      ),
    );
  }
}
