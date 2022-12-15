import 'package:flutter/material.dart';
import 'package:remake_spotify/pages/register_or_signup.dart';
import 'package:remake_spotify/style.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;

    Widget logoVector() {
      return Container(
        width: widthScreen * 33.22 / 100,
        height: heightScreen * 6.99 / 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/spotify_logo_vector.png'))),
      );
    }

    return Scaffold(
      backgroundColor: darkBg,
      body: SafeArea(
          child: Container(
        width: widthScreen,
        height: heightScreen,
        padding: EdgeInsets.symmetric(horizontal: (widthScreen * 5.59 / 100)),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg_get_started.png'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: heightScreen * 4.38 / 100,
            ),
            logoVector(),
            SizedBox(
              height: heightScreen * 43 / 100,
            ),
            Text(
              'Enjoy Listening To Music',
              style:
                  fontWhite.copyWith(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: heightScreen * 2.49 / 100,
            ),
            Container(
              width: widthScreen * 70 / 100,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                textAlign: TextAlign.center,
                style: fontGrey.copyWith(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: heightScreen * 4.38 / 100,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RegisterOrSignup()));
              },
              child: Text(
                'Get Started',
                style: fontWhite.copyWith(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(
                      vertical: heightScreen * 3.67 / 100,
                      horizontal: widthScreen * 17.80 / 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            )
          ],
        ),
      )),
    );
  }
}
