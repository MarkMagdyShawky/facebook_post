// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:facebook_post/Presentation/Post/Screens/widgets/postAvatar.dart';
import 'package:facebook_post/Presentation/Post/Screens/widgets/postBody.dart';
import 'package:facebook_post/Presentation/Post/Screens/widgets/postFooter.dart';
import 'package:facebook_post/Presentation/Post/Screens/widgets/postLikeCommentShare.dart';
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
                 PostAvatar(),
                  //Post Caption
                  PostBody(),
                  // Likes and comments
                 PostLikeCommentShare(),
                  Divider(
                    thickness: 1.0,
                  ),
                  // Like , comment , share
                 PostFotter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
