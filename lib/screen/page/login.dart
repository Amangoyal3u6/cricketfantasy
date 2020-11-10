import 'package:cricketfantasy/screen/widget/slider.dart';
import 'package:cricketfantasy/util/hexacolor.dart';
import 'package:cricketfantasy/util/vars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

class LoginScreen extends StatefulWidget {
  @override
  createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  String _email;
  String _password;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 40, top: 20),
              child: Text(
                'Login or Create a New Account',
                style: TextStyle(
                  color: Colors.deepOrange,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 40, top: 20),
              child: Text(
                'Enter your email and password',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ), //
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
              child: TextField(
                onChanged: (value) {
                  _email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Email', prefixIcon: Icon(Icons.mail)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
              child: TextField(
                obscureText: _obscureText,
                onChanged: (value) {
                  _password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffix: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      !_obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 24),
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ))),
            Container(
                margin: EdgeInsets.only(top: 26),
                width: MediaQuery.of(context).size.width / 1.3,
                child: FlatButton.icon(
                    color: Colors.blue.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    label: Text(
                      'LOGIN SECURELY',
                      style: TextStyle(color: Colors.white),
                    ))),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Click here',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 12),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Row(
                children: [
                  Text(
                    "By proceeding, you agree to our Term & Conditions.",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 28),
              width: MediaQuery.of(context).size.width / 1.2,
              child: FlatButton.icon(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.deepOrange,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  icon: SvgPicture.asset('assets/images/google.svg'),
                  label: Text('Continue with Google')),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              width: MediaQuery.of(context).size.width / 1.2,
              child: FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, routeTab);
                  },
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.deepOrange,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  icon: SvgPicture.asset('assets/images/facebook.svg'),
                  label: Text('Continue with Facebook')),
            ),
          ],
        ),
      ),
    );
    // return Scaffold(    //         margin: EdgeInsets.only(top: 40),

    //     body: Column(children: <Widget>[
    //   Expanded(
    //       child: Container(
    //           child: Column(children: <Widget>[
    //     Container(
    //         margin: EdgeInsets.only(top: 40),
    //         child: Text(appName,
    //             style: TextStyle(color: Colors.blue, fontSize: 30))),
    //     Flexible(child: SliderWidget()),
    //     SizedBox(height: 8),
    //     _socialLogin(EdgeInsets.all(10), LineIcons.facebook, '#4267B2',
    //         'Continue with Facebook', voidCallback: () {
    //       Navigator.pushNamed(context, routeMobile);
    //     }),
    //     _socialLogin(
    //         EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
    //         LineIcons.google_plus_square,
    //         '#EF5350',
    //         'Continue with Google', voidCallback: () {
    //       Navigator.pushNamed(context, routeTab);
    //     })
    //   ]))),
    // ]));
  }

  _socialLogin(
          EdgeInsets edgeInsets, IconData iconData, String color, String title,
          {VoidCallback voidCallback}) =>
      Container(
          margin: edgeInsets,
          decoration: new BoxDecoration(
            color: Colors.white70,
            borderRadius: new BorderRadius.circular(8.0),
          ),
          child: Material(
              color: Colors.transparent,
              child: InkWell(
                  borderRadius: new BorderRadius.circular(8.0),
                  onTap: () => voidCallback(),
                  child: Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: Center(
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                            Icon(iconData, color: HexColor(color), size: 30),
                            SizedBox(width: 4),
                            Text(title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16, color: HexColor(color)))
                          ]))))));
}
