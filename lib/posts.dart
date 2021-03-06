import 'package:flutter/material.dart';

class PublicPosts extends StatelessWidget {
  Widget allPosts(BuildContext context, userImage, userName, postImage) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage(userImage),
              ),
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
          padding: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(postImage),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
              child: Icon(
                Icons.chat_bubble_outline_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
              child: Icon(
                Icons.send_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 195),
              child: Icon(
                Icons.bookmark_border,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '398 likes',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Aanya Meet the speakers for #WomenWill: A #GoogleForIndia Event where gender equality',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'View all comments',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/11.jpg'),
                radius: 15,
              ),
            ),
            Text(
              'Add a comment...',
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Text(
                '♥',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '🙌',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '9 minutes ago',
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ),
        ),
        Divider(
          height: 20,
        ),
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
            'assets/images/3.jpg',
            'Oliva',
            'assets/images/4.jpg',
          ),
          allPosts(
            context,
            'assets/images/5.jpg',
            'Oliva',
            'assets/images/6.jpg',
          ),
          allPosts(
            context,
            'assets/images/7.jpg',
            'Noah',
            'assets/images/8.jpg',
          ),
          allPosts(
            context,
            'assets/images/9.jpg',
            'Amelia',
            'assets/images/10.jpg',
          ),
          allPosts(
            context,
            'assets/images/11.jpg',
            'Mia',
            'assets/images/12.jpg',
          ),
          allPosts(
            context,
            'assets/images/13.jpg',
            'Elijah',
            'assets/images/14.jpg',
          ),
        ],
      ),
    );
  }
}
