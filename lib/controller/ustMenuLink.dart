import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var listLink = {'Diziler', 'Filmler', 'Listem'};

Row ustMenuLink(double scwidth, var context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.purple,
            alignment: Alignment.center,
            margin: EdgeInsets.all(1),
            width: scwidth * .3,
            child: Text(
              '$listLink[0]',
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
