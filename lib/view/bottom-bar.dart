import 'package:netflix_clone/controller/export.dart';

Row bottomNavigationBuild(double scHeight) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      containerBuild(scHeight, Icons.house, 'Anasayfa'),
      containerBuild(scHeight, Icons.playlist_play_outlined, 'Çok Yakında'),
      containerBuild(
          scHeight, Icons.arrow_circle_down_outlined, 'İndirilenler'),
    ],
  );
}

Container containerBuild(double scHeight, IconData s, String yazi) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.all(8),
    height: scHeight * .06,
    child: Column(
      children: [
        Icon(
          s,
          color: Colors.white,
        ),
        Text(
          '$yazi',
          style: beyazYaziKucuk,
        ),
      ],
    ),
  );
}
