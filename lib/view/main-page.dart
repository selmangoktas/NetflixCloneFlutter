import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netflix_clone/controller/values.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.black,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: .1),
            padding: EdgeInsets.all(.1),
            width: scwidth,
            height: scHeight * .1,
            child: Row(
              children: [
                Container(
                  width: scwidth * .1,
                  height: scHeight * .1,
                  child: SvgPicture.asset(
                    logo,
                    color: Colors.red,
                    semanticsLabel: 'A red up arrow',
                  ),
                ),
                SizedBox(
                  width: scwidth * .5,
                ),
                Container(
                    width: scwidth * .1,
                    child: Icon(
                      Icons.cast_connected,
                      color: Colors.white,
                    )),
                Container(
                  width: scwidth * .1,
                  height: scHeight * .1,
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: scwidth * .1,
                  height: scHeight * .1,
                  child: Image(
                    image: DecorationImage(
                      image: AssetImage('name'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
