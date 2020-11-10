import 'package:flutter/material.dart';

class MyFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 26, right: 26, bottom: 26),
              child: Text(
                'Not following anyone? Follow the top performer and up your game!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
            ),
            Container(
              width: 100,
              child: Image.asset(
                "assets/images/question.png",
                color: Colors.black38,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 26),
              child: Text(
                'In the meantime, share something with your followers!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'SHARE NOW',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue.shade600,
            )
          ],
        ),
      ),
    );
  }
}
