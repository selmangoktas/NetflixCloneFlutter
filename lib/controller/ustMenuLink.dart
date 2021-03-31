import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var listLink = [
  {'Diziler', 'Filmler', 'Listem'}
];
Row ustMenuLink(double scwidth) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      bottomContainerBuild(scwidth, 'Diziler'),
      bottomContainerBuild(scwidth, 'Filmler'),
      bottomContainerBuild(scwidth, 'Listem'),
    ],
  );
}

Container bottomContainerBuild(double scwidth, String baslik) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.all(1),
    width: scwidth * .3,
    child: Text(
      '$baslik',
      style: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
