import 'export.dart';

Container buildMiddleButton(double scwidth, double scHeight) {
  return Container(
    alignment: Alignment.center,
    height: scHeight * .1,
    //color: Colors.teal[50].withOpacity(.1),
    padding: EdgeInsets.only(top: 3),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  child: SvgPicture.asset(top10),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Text(
                    "Türkiye'de Bugün 5 Numara",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        plusSvg,
                        height: 25,
                        width: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: scwidth * .3),
                    Container(
                      child: Text(
                        'Listem',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 70,
                  height: 40,
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Oynat',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        infoSvg,
                        height: 25,
                        width: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: scwidth * .3),
                    Container(
                      child: Text(
                        'Bilgi',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
