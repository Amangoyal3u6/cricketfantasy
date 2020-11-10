import 'package:cricketfantasy/screen/my_matches_screen.dart';
import 'package:cricketfantasy/screen/page/home.dart';
import 'package:cricketfantasy/screen/page/my_feed_screen.dart';
import 'package:cricketfantasy/screen/page/profile_new_screen.dart';
import 'package:cricketfantasy/screen/page/standings.dart';
import 'package:cricketfantasy/screen/page/wallet_screen.dart';
import 'package:cricketfantasy/util/vars.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../home_Screen_main.dart';
import 'custome_drawer.dart';
import 'more.dart';
import 'my_profile.dart';

class TabScreenNew extends StatefulWidget {
  @override
  _TabScreenNewState createState() => _TabScreenNewState();
}

class _TabScreenNewState extends State<TabScreenNew>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  final List<Widget> viewContainer = [
    HomeScreenMain(),
    MyMatchesScreen(),
    MyFeedScreen(),
    ProfileNewScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        actions: [
          IconButton(
              icon: Icon(
                Icons.add_alert,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.account_balance_wallet_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WalletScreen()));
              }),
        ],
        title: Text(
          appName,
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: CustomeDrawer(),
      body: viewContainer[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: currentIndex,
        fixedColor: Colors.blue.shade700,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.assistant), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.feedback), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.feedback), label: ''),
        ],
      ),
    );
  }
}
