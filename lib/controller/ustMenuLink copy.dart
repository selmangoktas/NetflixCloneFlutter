import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var listLink = [
  {'Diziler', 'Filmler', 'Listem'}
];
Row ustMenuLink(double scwidth) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(1),
        width: scwidth * .3,
        child: Text(
          'Diziler',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(1),
        width: scwidth * .3,
        child: Text(
          'Filmler',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(1),
        width: scwidth * .3,
        child: Text(
          'Listem',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
