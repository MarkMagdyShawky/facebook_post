import 'package:flutter/material.dart';
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
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xff242526),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children:  [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
