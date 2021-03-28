import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var listLink = [
  {'Diziler', 'Filmler', 'Listem'}
];
Row ustMenuLink(double scwidth, var c) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
          
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
          );
        },
        itemCount: listLink.length,
      )
    ],
  );
}
