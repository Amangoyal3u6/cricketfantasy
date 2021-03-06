import 'package:cricketfantasy/screen/page/payment/kyc_verification.dart';
import 'package:cricketfantasy/screen/privacy_policy_screen.dart';
import 'package:cricketfantasy/screen/term_condition.dart';
import 'package:cricketfantasy/screen/widget/webview.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../about_us_screen.dart';
import '../career.dart';
import '../faq_screen.dart';
import '../how_to_playscreen.dart';
import '../legality.dart';
import '../refund_and_cancelation.dart';
import 'contest_invite_code.dart';
import 'home.dart';
import 'package:cricketfantasy/util/extensions.dart';

class MoreScreen extends StatefulWidget {
  final VoidCallback inviteFriendClick;

  const MoreScreen({Key key, this.inviteFriendClick}) : super(key: key);
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  double _appBarHeight = 100.0;
  AppBarBehavior _appBarBehavior = AppBarBehavior.pinned;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      CustomScrollView(physics: BouncingScrollPhysics(), slivers: <Widget>[
        SliverList(
            delegate: new SliverChildBuilderDelegate(
                (context, index) => Column(children: <Widget>[
                      InkWell(
                          onTap: () {
                            widget.inviteFriendClick();
                          },
                          child: moreItem('Invite Friends')),
                      // InkWell(
                      //     onTap: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) =>
                      //                   ContestInviteCodeScreen(),
                      //               fullscreenDialog: true));
                      //     },
                      //     child: moreItem('Contest invite code')),
                      // InkWell(
                      //     onTap: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) =>
                      //                   KYCVerificationScreen(),
                      //               fullscreenDialog: true));
                      //     },
                      //     child: kyc()),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HowToPlayScreen()));
                          },
                          child: moreItem('How to play')),
                      // InkWell(
                      //     onTap: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => WebViewWidget(
                      //                   title: 'Point system',
                      //                   url: 'https://www.google.com/'),
                      //               fullscreenDialog: true));
                      //     },
                      //     child: moreItem('Points system')),

                      InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => WebViewWidget(
                            //             title: 'About us',
                            //             url: 'https://www.google.com/'),
                            //         fullscreenDialog: true));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutUsScreen()));
                          },
                          child: moreItem('About us')),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PrivacyPolicyScreen()));
                          },
                          child: moreItem('Privacy Policy')),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RefundAndPolicy()));
                          },
                          child: moreItem('Refund And Cancellation Policy')),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TermAndCondition()));
                          },
                          child: moreItem('Terms and conditions')),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LegalityScreen()));
                          },
                          child: moreItem('Legality')),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CareerScreen()));
                          },
                          child: moreItem('Career')),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FaqScreen()));
                          },
                          child: moreItem('FAQs')),
                    ]),
                childCount: 1))
      ])
    ]));
  }

  moreItem(String title) => Container(
          child: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
            child: Row(children: <Widget>[
              Expanded(child: Text(title)),
              Icon(LineIcons.arrow_circle_o_right)
            ])),
        Divider(height: 1)
      ]));

  kyc() => Container(
          child: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Row(children: <Widget>[
              Expanded(child: Text("KYC")),
              Container(
                  decoration: new BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: new BorderRadius.circular(20)),
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8.0, bottom: 8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: Text("Status:  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey))),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      padding:
                                          EdgeInsets.only(left: 4, right: 4),
                                      child: Text("Verified",
                                          style:
                                              TextStyle(color: Colors.green))),
                                  Icon(LineIcons.check,
                                      size: 18, color: Colors.green)
                                ])
                          ])))
            ])),
        Divider(height: 1)
      ]));
}
