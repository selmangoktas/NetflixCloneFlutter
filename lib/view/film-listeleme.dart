import 'package:netflix_clone/controller/export.dart';

ListView buildFilmListView(var filmler) {
  return ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: filmler.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Container(
          height: 120,
          //color: Colors.pink[900],
          child: Text(
            filmler[index]['Title'],
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.pink[900],
                //color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      );
    },
  );
}
