import 'package:netflix_clone/controller/export.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var scwidth = MediaQuery.of(context).size.width;
    var scHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          //shrinkWrap: true,
          slivers: [
            SliverAppBar(
              toolbarHeight: 40,
              brightness: Brightness.dark,
              pinned: false,
              primary: true,
              backgroundColor: Colors.black.withOpacity(0),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ustMenuBuild(scwidth, scHeight),
                  ],
                ),
              ),
            ),
            SliverAppBar(
              toolbarHeight: 40,
              brightness: Brightness.dark,
              pinned: true,
              primary: true,
              backgroundColor: Colors.black.withOpacity(0),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
                title: ustMenuLink(scwidth),
              ),
            ),
            SliverStretchHeader(
              minBlankExtent: 300,
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg'),
                  ),
                ),
              ),
              child: Container(
                color: Colors.green.withOpacity(.5),
                height: 60,
                child: Center(child: Text("Child Widget")),
              ),
            ),
            buildFilmListView(films),
            buildFilmListView(films),
            buildFilmListView(films),
            buildFilmListView(films),
            buildFilmListView(films),
          ],
        ),
      ),
    );
  }
}
