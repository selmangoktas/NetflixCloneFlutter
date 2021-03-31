
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
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filmler.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.only(right: 50),
                height: 120,
                width: 120,
                //color: Colors.pink[900],
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  child: Text(
                    '',
                    // filmler[index]['Title'],
                    style: GoogleFonts.darkerGrotesque(color: Colors.white),
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




SliverToBoxAdapter buildFilmListView1(
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
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filmler.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.only(right: 50),
                height: 120,
                width: 120,
                //color: Colors.pink[900],
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  child: Text(
                    '',
                    // filmler[index]['Title'],
                    style: GoogleFonts.darkerGrotesque(color: Colors.white),
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
