import 'package:flutter/material.dart';
import 'package:remake_spotify/pages/music_page.dart';
import 'package:remake_spotify/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;

    Widget appBar() {
      return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/spotify_logo_vector.png'),
          fit: BoxFit.contain,
          width: 108,
          height: 33,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      );
    }

    Widget nowPlaying() {
      return Container(
        height: 183,
        width: 325,
        child: Stack(children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 325,
              height: 118,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Image(image: AssetImage('assets/billie_02.png')),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              width: 147,
              height: 118,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Album ',
                      style: fontWhite.copyWith(
                          fontSize: 10, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Happier Than Ever',
                      style: fontWhite.copyWith(
                          fontSize: 19, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Billie Eilish',
                      style: fontWhite.copyWith(
                          fontSize: 10, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ]),
            ),
          )
        ]),
      );
    }

    Widget categoryMenu() {
      return Container(
        padding: EdgeInsets.only(left: 35),
        height: 27,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Text(
              'News',
              style:
                  fontWhite.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 47,
            ),
            Text(
              'Video',
              style:
                  fontGrey.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 47,
            ),
            Text(
              'Artist',
              style:
                  fontGrey.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 47,
            ),
            Text(
              'Podcast',
              style:
                  fontGrey.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 47,
            ),
            Text(
              'Play List',
              style:
                  fontGrey.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 47,
            ),
          ],
        ),
      );
    }

    Widget albumPicture({
      required String album,
      required String artist,
      required String imageUrl,
    }) {
      return Container(
        width: 147,
        child: Stack(children: [
          Container(
            width: 147,
            height: 185,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.cover)),
          ),
          Positioned(
            child: Text(
              album,
              style:
                  fontWhite.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            bottom: 25,
          ),
          Positioned(
            child: Text(
              artist,
              style:
                  fontGrey.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            bottom: 5,
          ),
          Positioned(
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: darkLightColor,
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  onPressed: () {},
                  icon: Image(
                    image: AssetImage('assets/icon/play_icon.png'),
                    width: 14,
                    height: 14,
                  )),
            ),
            bottom: 50,
            right: 10,
          )
        ]),
      );
    }

    Widget listMusic() {
      return ListTile(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const MusicPage()));
        },
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: darkLightColor, borderRadius: BorderRadius.circular(20)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage('assets/icon/play_icon.png'),
                width: 15,
                height: 15,
              )),
        ),
        title: Text(
          'As It Was',
          style: fontWhite.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'Hrry Styles',
          style: fontWhite.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 50,
            children: [
              Text('5:33',
                  style: fontWhite.copyWith(
                    fontSize: 15,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image(image: AssetImage('assets/icon/favorite.png')))
            ]),
      );
    }

    Widget bottomMenu() {
      return Container(
        height: 73,
        width: widthScreen,
        color: darkLightColor,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon/home_active.png'))),
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon/discover.png'))),
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon/favorite.png'))),
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon/profile.png'))),
          ),
        ]),
      );
    }

    return Scaffold(
      backgroundColor: darkBg,
      body: Container(
          width: widthScreen,
          height: heightScreen,
          child: SafeArea(
            child: Stack(
              children: [
                ListView(children: [
                  // header start
                  Container(
                    height: 183,
                    width: widthScreen,
                    child: Stack(children: [
                      appBar(),
                      Align(
                        alignment: Alignment.center,
                        child: nowPlaying(),
                      )
                    ]),
                  ),
                  // header end
                  SizedBox(height: 41),
                  // category menu start
                  categoryMenu(),
                  // category menu end
                  SizedBox(
                    height: 31,
                  ),
                  // album menu start
                  Container(
                    padding: EdgeInsets.only(left: 28),
                    height: 250,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      albumPicture(
                          artist: 'Billi Eilish',
                          album: 'Bad Guy',
                          imageUrl: 'assets/billie_album.png'),
                      SizedBox(
                        width: 14,
                      ),
                      albumPicture(
                          artist: 'Drake',
                          album: 'Scorpion',
                          imageUrl: 'assets/drake_album.png'),
                      SizedBox(
                        width: 14,
                      ),
                      albumPicture(
                          artist: 'Billi Eilish',
                          album: 'WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?',
                          imageUrl: 'assets/billie_album_02.png'),
                      SizedBox(
                        width: 14,
                      ),
                      albumPicture(
                          artist: 'Undefined',
                          album: 'Unknown',
                          imageUrl: 'assets/billie_album.png'),
                      SizedBox(
                        width: 14,
                      ),
                    ]),
                  ),
                  // album menu end
                  SizedBox(
                    height: 37,
                  ),
                  // playlist start
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 34),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Playlist',
                            style: fontWhite.copyWith(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'See More',
                            style: fontGrey.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      listMusic(),
                      listMusic(),
                      listMusic(),
                      listMusic(),
                    ]),
                  ),
                  // playlist end
                  SizedBox(
                    height: 73,
                  )
                ]),
                // appbar botom start
                Positioned(
                  child: bottomMenu(),
                  bottom: 0,
                )
                // appbar botom end
              ],
            ),
          )),
    );
  }
}
