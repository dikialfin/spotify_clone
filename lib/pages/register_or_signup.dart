import 'package:flutter/material.dart';
import 'package:remake_spotify/pages/register.dart';
import 'package:remake_spotify/pages/signin.dart';
import 'package:remake_spotify/style.dart';

class RegisterOrSignup extends StatelessWidget {
  const RegisterOrSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;

    Widget waveTop() {
      return Container(
        height: heightScreen * 20 / 100,
        width: widthScreen * 30 / 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/wave_top.png'), fit: BoxFit.cover)),
      );
    }

    Widget waveBotom() {
      return Container(
        height: heightScreen * 40 / 100,
        width: widthScreen * 50 / 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/wave_botom.png'), fit: BoxFit.fill)),
      );
    }

    Widget imageArtist() {
      return Container(
        height: heightScreen * 50 / 100,
        width: widthScreen * 70 / 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/billie_01.png'), fit: BoxFit.fill)),
      );
    }

    Widget background() {
      return Container(
          height: heightScreen,
          width: widthScreen,
          child: Stack(
            children: [
              Positioned(right: 0, top: 0, child: waveTop()),
              Positioned(right: 0, bottom: 0, child: waveBotom()),
              Positioned(left: 0, bottom: 0, child: imageArtist()),
            ],
          ));
    }

    Widget backButton() {
      return Container(
        height: 32,
        width: 32,
        padding: EdgeInsets.only(left: 2.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(255, 255, 255, 0.1)),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 17),
          color: Colors.white,
        ),
      );
    }

    Widget vectorLogo() {
      return Container(
        width: widthScreen * 39.83 / 100,
        height: heightScreen * 8.41 / 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/spotify_logo_vector.png'))),
      );
    }

    Widget registerButton() {
      return Container(
        width: widthScreen * 24.92 / 100,
        height: heightScreen * 6.65 / 100,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(30)),
        child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Register()));
            },
            child: Text(
              'Register',
              style: fontWhite.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: (widthScreen * 3.22 / 100)),
            )),
      );
    }

    Widget content() {
      return Container(
          height: heightScreen,
          width: widthScreen,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              backButton(),
              SizedBox(
                height: heightScreen * 13.5 / 100,
              ),
              Center(
                  child: Column(
                children: [
                  vectorLogo(),
                  SizedBox(
                    height: heightScreen * 6.52 / 100,
                  ),
                  Text(
                    'Enjoy Listening To Music',
                    style: fontWhite.copyWith(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: heightScreen * 2.49 / 100,
                  ),
                  Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider',
                    style: fontGrey.copyWith(
                        fontSize: 17, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: heightScreen * 3.55 / 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      registerButton(),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignIn()));
                          },
                          child: Text(
                            'Signin',
                            style: fontWhite.copyWith(
                                fontSize: (widthScreen * 3.22 / 100),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ))
            ],
          ));
    }

    return Scaffold(
      backgroundColor: darkBg,
      body: SafeArea(
          child: Container(
        width: widthScreen,
        height: heightScreen,
        decoration: BoxDecoration(color: darkBg),
        child: Stack(children: [background(), content()]),
      )),
    );
  }
}
