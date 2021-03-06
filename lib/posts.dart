import 'package:flutter/material.dart';

class PublicPosts extends StatelessWidget {
  Widget allPosts(BuildContext context, userImage, userName, postImage) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(userImage),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                userName,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 220),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 20),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(postImage),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          allPosts(
            context,
            'assets/images/1.jpg',
            'Aanya',
            'assets/images/2.jpg',
          ),
          allPosts(
            context,
            'assets/images/1.jpg',
            'Aanya',
            'assets/images/2.jpg',
          ),
        ],
      ),
    );
  }
}
