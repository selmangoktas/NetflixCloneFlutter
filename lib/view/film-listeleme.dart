import 'package:netflix_clone/controller/export.dart';

SliverToBoxAdapter buildFilmListView(
    List<Map<String, Object>> filmler, String baslik) {
  return SliverToBoxAdapter(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 2, bottom: 10, top: 10),
          child: Text(
            baslik,
            style: beyazYazi,
          ),
        ),
        Container(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filmler.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.only(right: 50),
                height: 200,
                width: 120,
                //color: Colors.pink[900],
                child: Container(
                  width: 200,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 0, left: 0, top: 50),
                  padding: EdgeInsets.only(bottom: 0, left: 0),
                  child: populerListesisayiGoster(index, baslik),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: NetworkImage(
                        urlEkle(filmler[index]['poster_path']),
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink[900].withOpacity(.5),
                      //color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget populerListesisayiGoster(int index, String baslik) {
  if (baslik == "Populer") {
    int say = index + 1;
    return Container(
      width: 600,
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          // Stroked text as border.
          Text(
            '$say',
            style: TextStyle(
              fontSize: say >= 10 ? 60 : 100,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 6
                ..color = Colors.white,
            ),
          ),
          // Solid text as fill.
          Text(
            '$say',
            style: TextStyle(
              fontSize: say >= 10 ? 60 : 100,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  } else {
    return Text('');
  }
}

SliverToBoxAdapter buildFilmListView1(
    List<Map<String, Object>> filmler, String baslik) {
  return SliverToBoxAdapter(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 2, bottom: 0, top: 10),
          child: Text(
            baslik,
            style: beyazYazi,
          ),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filmler.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 20),
                //padding: EdgeInsets.only(right: 50),
                height: 120,
                width: 120,
                //color: Colors.pink[900],
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,

                    alignment: Alignment.center,
                    //margin: EdgeInsets.only(bottom: 5, right: 5),
                    child: Center(
                      child: Image.asset(
                        playBtn,
                        color: Colors.lightGreenAccent[50],
                        alignment: Alignment.center,
                        //color: Colors.black.withOpacity(1.0),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: NetworkImage(
                        urlEkle(filmler[index]['poster_path']),
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink[900].withOpacity(.5),
                      //color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
