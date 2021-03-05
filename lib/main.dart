import 'package:flutter/material.dart';
import 'package:instagram_ui/stories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget bottomNavigationIcons(menuIcons) {
    return Icon(
      menuIcons,
      color: Colors.white,
      size: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Row(
            children: [
              Divider(
                height: 120,
              ),
              Container(
                height: 60,
                width: 80,
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 50,
                width: 200,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              Container(
                height: 60,
                width: 80,
                child: Transform.rotate(
                  angle: -0.35,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: stories(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: bottomNavigationIcons(Icons.home_filled),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: bottomNavigationIcons(Icons.search),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: bottomNavigationIcons(Icons.movie_creation_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: bottomNavigationIcons(Icons.favorite_border),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/11.jpg'),
                    radius: 15,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
