import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_audio_eco_video/components/text_field_primary.dart';
import 'package:flutter_audio_eco_video/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/img_bg_login.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100.0),
              child: Text(
                "Audio",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Text(
              "Its modular and design to last",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700),
            ),
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 40.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: TextFieldPrimary(
                      hint: "Email",
                      icon: "assets/images/ic_mail.png",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: TextFieldPrimary(
                      hint: "Password",
                      icon: "assets/images/ic_lock.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Constants.kGreen,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Text(
                      "Sign In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't have any account? ",
                          style: TextStyle(color: Colors.white, fontSize: 14.0),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed('/signup');
                          },
                          child: Text(
                            "Sign Up here",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Constants.kGreen,
                                fontSize: 14.0),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
