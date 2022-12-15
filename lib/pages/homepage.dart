import 'package:flutter/material.dart';
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

    Widget bottomMenu() {
      return Container(
        height: heightScreen * 8.65 / 100,
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

    Widget vectorLogo() {
      return Container(
        width: widthScreen * 18.31 / 100,
        height: heightScreen * 3.91 / 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/spotify_logo_vector.png'))),
      );
    }

    Widget nowPLaying() {
      return Container(
        width: widthScreen * 82 / 100,
        height: heightScreen * 20 / 100,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(30)),
        child: Stack(children: [
          Container(
            width: widthScreen * 37 / 100,
            padding: EdgeInsets.only(left: 15, top: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
          )
        ]),
      );
    }

    Widget albumPicture({
      required String album,
      required String artist,
      required String imageUrl,
    }) {
      return Container(
        width: widthScreen * 24.92 / 100,
        child: Stack(children: [
          Container(
            width: widthScreen * 24.92 / 100,
            height: heightScreen * 22 / 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(imageUrl))),
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
            right: 5,
          )
        ]),
      );
    }

    Widget listMusic() {
      return ListTile(
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

    return Scaffold(
        backgroundColor: darkBg,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(
                  left: widthScreen * 4.75 / 100, top: heightScreen * 2 / 100),
              children: [
                SizedBox(
                  height: heightScreen * 2.26 / 100,
                ),
                Container(
                  width: widthScreen * 55.08 / 100,
                  height: heightScreen * 30 / 100,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: whiteColor,
                              )),
                          SizedBox(
                            width: widthScreen * 25 / 100,
                          ),
                          vectorLogo(),
                          SizedBox(
                            width: widthScreen * 25 / 100,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: whiteColor,
                              ))
                        ],
                      ),
                      Positioned(
                        child: nowPLaying(),
                        left: 20,
                        bottom: 0,
                      ),
                      Positioned(
                        child: Image(
                          image: AssetImage('assets/billie_02.png'),
                          width: widthScreen * 85 / 100,
                        ),
                        bottom: 0,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: heightScreen * 4.98 / 100,
                ),
                Container(
                  height: 32,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: widthScreen * 5 / 100,
                      ),
                      Text(
                        'News',
                        style: fontWhite.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: widthScreen * 8.47 / 100,
                      ),
                      Text(
                        'Video',
                        style: fontGrey.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: widthScreen * 8.47 / 100,
                      ),
                      Text(
                        'Artist',
                        style: fontGrey.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: widthScreen * 8.47 / 100,
                      ),
                      Text(
                        'Podcast',
                        style: fontGrey.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: widthScreen * 8.47 / 100,
                      ),
                      Text(
                        'Play List',
                        style: fontGrey.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: widthScreen * 8.47 / 100,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: widthScreen * 5 / 100),
                  height: heightScreen * 30 / 100,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    albumPicture(
                        artist: 'Billi Eilish',
                        album: 'Bad Guy',
                        imageUrl: 'assets/billie_album.png'),
                    SizedBox(
                      width: widthScreen * 5 / 100,
                    ),
                    albumPicture(
                        artist: 'Drake',
                        album: 'Scorpion',
                        imageUrl: 'assets/drake_album.png'),
                    SizedBox(
                      width: widthScreen * 5 / 100,
                    ),
                    albumPicture(
                        artist: 'Billi Eilish',
                        album: 'WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?',
                        imageUrl: 'assets/billie_album_02.png'),
                    SizedBox(
                      width: widthScreen * 5 / 100,
                    ),
                    albumPicture(
                        artist: 'Undefined',
                        album: 'Unknown',
                        imageUrl: 'assets/billie_album.png')
                  ]),
                ),
                SizedBox(
                  height: heightScreen * 4.38 / 100,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: widthScreen * 5 / 100),
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
              ],
            ),
            Positioned(
              child: bottomMenu(),
              bottom: 0,
            ),
          ],
        ));
  }
}
