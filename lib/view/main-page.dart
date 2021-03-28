import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/replace.dart';
import 'package:netflix_clone/controller/ustMenu.dart';
import 'package:netflix_clone/controller/ustMenuLink.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var scwidth = MediaQuery.of(context).size.width;
    var scHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ustMenuBuild(scwidth, scHeight),
              ustMenuLink(scwidth, context),
              Container(
                margin: EdgeInsets.zero,
                width: scwidth,
                height: scHeight * .689,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(
                      httpsCevirme(
                          'http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg'),
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
