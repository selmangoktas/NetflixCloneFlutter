import 'package:netflix_clone/controller/export.dart';

SliverToBoxAdapter buildFilmListView(List<Map<String, Object>> filmler) {
  return SliverToBoxAdapter(
    child: Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: films.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100.0,
            child: Card(
              child: Text(
                films[index]['Title'],
                style: TextStyle(color: Colors.red),
              ),
            ),
          );
        },
      ),
    ),
  );
}
