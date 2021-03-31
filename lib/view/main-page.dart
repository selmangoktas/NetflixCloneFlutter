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
              // backgroundColor: Colors.black.withOpacity(0),
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
              minBlankExtent: scHeight * .5,
              background: Container(
                margin: EdgeInsets.only(top: 1),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.linearToSrgbGamma(),
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://i.pinimg.com/474x/31/6e/1d/316e1dcfc90215bae92b9d89501903ca.jpg'),
                  ),
                ),
              ),
              child: Container(
                color: Colors.green.withOpacity(.5),
                height: 60,
                child: Center(child: Text("Child Widget")),
              ),
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
