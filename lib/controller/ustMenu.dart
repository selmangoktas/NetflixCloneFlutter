import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netflix_clone/controller/values.dart';

Container ustMenuBuild(double scwidth, double scHeight) {
  return Container(
    color: Colors.black,
    alignment: Alignment.topLeft,
    padding: EdgeInsets.only(top: 0),
    width: scwidth,
    height: scHeight * .1,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 0),
          width: scwidth * .1,
          height: scHeight * .1,
          child: SvgPicture.asset(
            logo,
          ),
        ),
        SizedBox(
          width: scwidth * .55,
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
            Icons.zoom_out,
            color: Colors.white,
          ),
        ),
        Container(
          width: scwidth * .1,
          height: scHeight * .1,
          child: SvgPicture.asset(
            tie,
          ),
        ),
      ],
    ),
  );
}
