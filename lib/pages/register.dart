import 'package:flutter/material.dart';
import 'package:remake_spotify/pages/signin.dart';
import 'package:remake_spotify/style.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;

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
        width: widthScreen * 18.31 / 100,
        height: heightScreen * 3.91 / 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/spotify_logo_vector.png'))),
      );
    }

    Widget textForm({required String hintText}) {
      return TextFormField(
        cursorColor: primaryColor,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white12, width: 1, style: BorderStyle.solid)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white12, width: 1, style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: primaryColor, width: 1, style: BorderStyle.solid)),
            contentPadding: EdgeInsets.symmetric(vertical: 29, horizontal: 27),
            hintText: hintText,
            hintStyle:
                fontWhite.copyWith(fontSize: 16, color: Color(0xffa7a7a7))),
        style: fontWhite.copyWith(fontSize: 16, color: Color(0xffa7a7a7)),
      );
    }

    Widget textFormPassword({required String hintText}) {
      return TextFormField(
        cursorColor: primaryColor,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white12, width: 1, style: BorderStyle.solid)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white12, width: 1, style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: primaryColor, width: 1, style: BorderStyle.solid)),
            contentPadding: EdgeInsets.symmetric(vertical: 29, horizontal: 27),
            hintText: hintText,
            hintStyle:
                fontWhite.copyWith(fontSize: 16, color: Color(0xffa7a7a7)),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.visibility_off,
                    color: Colors.white12,
                    size: 30,
                  )),
            )),
        style: fontWhite.copyWith(fontSize: 16, color: Color(0xffa7a7a7)),
      );
    }

    Widget createAccountButton() {
      return TextButton(
        onPressed: () {},
        child: Text(
          'Create Account',
          style: fontWhite.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            padding: EdgeInsets.symmetric(
                vertical: heightScreen * 3.20 / 100,
                horizontal: widthScreen * 15.25 / 100),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
      );
    }

    return Scaffold(
      backgroundColor: darkBg,
      body: SafeArea(
        child: Container(
          width: widthScreen,
          height: heightScreen,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 36),
          child: ListView(children: [
            Row(
              children: [
                backButton(),
                SizedBox(
                  width: widthScreen * 28 / 100,
                ),
                vectorLogo()
              ],
            ),
            SizedBox(
              height: heightScreen * 9.84 / 100,
            ),
            Center(
                child: Text(
              'Register',
              style:
                  fontWhite.copyWith(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: heightScreen * 2.61 / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'If You Need Any Support',
                  style: fontWhite.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'Click Here',
                  style: fontPrimary.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: heightScreen * 4.50 / 100,
            ),
            textForm(hintText: "Full Name"),
            SizedBox(
              height: heightScreen * 1.90 / 100,
            ),
            textForm(hintText: "Enter Email"),
            SizedBox(
              height: heightScreen * 1.90 / 100,
            ),
            textFormPassword(hintText: "Password"),
            SizedBox(
              height: heightScreen * 4 / 100,
            ),
            createAccountButton(),
            SizedBox(
              height: heightScreen * 3.67 / 100,
            ),
            Row(
              children: [
                Expanded(
                    child: Image(image: AssetImage('assets/left_line.png'))),
                SizedBox(
                  width: widthScreen * 3.67 / 100,
                ),
                Text(
                  'Or',
                  style: fontGrey.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: widthScreen * 3.67 / 100,
                ),
                Expanded(
                    child: Image(image: AssetImage('assets/right_line.png'))),
              ],
            ),
            SizedBox(
              height: heightScreen * 1.66 / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image(image: AssetImage('assets/google_logo.png'))),
                IconButton(
                    onPressed: () {},
                    icon: Image(image: AssetImage('assets/apple_logo.png'))),
              ],
            ),
            SizedBox(
              height: heightScreen * 6.75 / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do You Have An Account ? ',
                  style: fontWhite.copyWith(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignIn()));
                  },
                  child: Text(
                    'Sign In ',
                    style: fontBlue.copyWith(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
