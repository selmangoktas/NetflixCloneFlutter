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
              backgroundColor: Colors.black.withOpacity(0.1),
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
              //brightness: Brightness.dark,
              pinned: true,
              primary: true,
              backgroundColor: Colors.black.withOpacity(0),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
                title: ustMenuLink(scwidth),
              ),
            ),
            SliverStretchHeader(
              minBlankExtent: 450,
              background: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(.7),
                          Colors.black.withOpacity(.5),
                          Colors.black.withOpacity(.3),
                          Colors.black.withOpacity(.2),
                          Colors.black.withOpacity(.1),
                          Colors.black.withOpacity(1),
                        ],
                      ).createShader(
                          Rect.fromLTRB(0, -140, rect.width, rect.height - 20));
                    },
                    blendMode: BlendMode.darken,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://image.tmdb.org/t/p/original///4ZSzEDVdxWVMVO4oZDvoodQOEfr.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              child: buildMiddleButton(scwidth, scHeight),
            ),
            buildFilmListView(trendFilms, 'Listem'),
            buildFilmListView(tvShow, 'Populer'),
            buildFilmListView1(personalFilms, 'Selman İzlemeye Devam Et'),
            buildFilmListView(action, 'Aksiyon'),
            buildFilmListView(season, 'Diziler'),
            buildFilmListView(popular, 'Yerli ve Popüler'),
            buildFilmListView(family, 'Aile Sineması'),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBuild(scHeight),
    );
  }
} //
