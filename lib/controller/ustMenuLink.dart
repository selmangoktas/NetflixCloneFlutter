import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var listLink = [
  'Diziler',
  'Filmler',
  'Listem',
];

Row ustMenuLink(double scwidth) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(1),
            width: scwidth * .3,
            child: Text(
              listLink[index],
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
        itemCount: listLink.length,
      )
    ],
  );
}
