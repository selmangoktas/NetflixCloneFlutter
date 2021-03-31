import 'package:netflix_clone/controller/export.dart';

Row bottomNavigationBuild(double scHeight) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.all(10),
        height: scHeight * .06,
        child: Column(
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Text(
              'Home',
              style: beyazYaziKucuk,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10),
        height: scHeight * .06,
        child: Column(
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Text(
              'Çok Yakında',
              style: beyazYaziKucuk,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10),
        height: scHeight * .06,
        child: Column(
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Text(
              'İndirilenler',
              style: beyazYazi,
            ),
          ],
        ),
      ),
    ],
  );
}
