// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
// ignore_for_file: prefer_const_constructors

class FacebookPostPage extends StatelessWidget {
  const FacebookPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff18191a),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              decoration: BoxDecoration(color: Color(0xff242526), borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Avatar ant name and 2 icons close and settings
                  Padding(
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
                              backgroundImage: AssetImage("assets/images/image2.jpg"),
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
                                  "Mark Magdy",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // date and it's icon
                                Row(
                                  children: [
                                    Text("1 days ago ",
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
                  ),
                  //Post Caption
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 15),
                    child: Text(
                      "Berliner Christian Church",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Image(image: AssetImage("assets/images/image3.jpg")),
                  // Likes and comments
                  Padding(
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
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                  // Like , comment , share
                  Padding(
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
