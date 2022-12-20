import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:remake_spotify/style.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
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
        title: Text(
          'Now Playing',
          style: fontWhite.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      );
    }

    Widget artistImage() {
      return Container(
        width: 335,
        height: 370,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage('assets/billie_album.png'),
                fit: BoxFit.cover)),
      );
    }

    Widget musicController() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage('assets/icon/repeate.png'))),
          IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage('assets/icon/previous.png'))),
          TextButton(
            onPressed: () {},
            child: Image(
              image: AssetImage('assets/icon/pause.png'),
              width: 28,
              height: 28,
            ),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                padding: EdgeInsets.all(22),
                backgroundColor: primaryColor),
          ),
          IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage('assets/icon/next.png'))),
          IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage('assets/icon/shuffle.png'))),
        ],
      );
    }

    return Scaffold(
      backgroundColor: darkBg,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 28),
        height: heightScreen,
        width: widthScreen,
        child: ListView(children: [
          appBar(),
          SizedBox(
            height: 22,
          ),
          artistImage(),
          SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Bad Guy',
                    style: fontWhite.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Billie Eilish',
                    style: fontWhite.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image(
                      image: AssetImage('assets/icon/favorite_disable.png')))
            ],
          ),
          SizedBox(
            height: 52,
          ),
          ProgressBar(
            progress: Duration(milliseconds: (1000 * 60 * 2) + (1000 * 25)),
            buffered: Duration(milliseconds: (1000 * 60 * 2) + (1000 * 25)),
            total: Duration(milliseconds: (1000 * 60 * 4) + (1000 * 2)),
            thumbColor: whiteColor,
            baseBarColor: greyColor,
            progressBarColor: whiteColor,
            timeLabelTextStyle: fontGrey,
            timeLabelLocation: TimeLabelLocation.below,
            onSeek: (duration) {
              print('User selected a new time: $duration');
            },
          ),
          SizedBox(
            height: 46,
          ),
          musicController(),
          SizedBox(
            height: 33,
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image(image: AssetImage('assets/icon/arrow_up.png'))),
              Text(
                'Lyrics',
                style: fontWhite.copyWith(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 26,
              )
            ],
          )
        ]),
      ),
    );
  }
}
