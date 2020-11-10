import 'package:flutter/material.dart';

class MyMatchesScreen extends StatefulWidget {
  @override
  _MyMatchesScreenState createState() => _MyMatchesScreenState();
}

class _MyMatchesScreenState extends State<MyMatchesScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 24, top: 12, right: 24),
            height: 60,
            child: TabBar(
              tabs: [
                Column(
                  children: [
                    Icon(
                      Icons.add_alert_outlined,
                      color: Colors.blue.shade700,
                    ),
                    Text(
                      'UPCOMING',
                      style: TextStyle(color: Colors.blue.shade700),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.live_tv,
                      color: Colors.blue.shade700,
                    ),
                    Text(
                      'LIVE',
                      style: TextStyle(color: Colors.blue.shade700),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.assessment,
                      color: Colors.blue.shade700,
                    ),
                    Text(
                      'RESULTS',
                      style: TextStyle(color: Colors.blue.shade700),
                    )
                  ],
                ),
              ],
              unselectedLabelColor: const Color(0xffacb3bf),
              indicatorColor: Colors.blue.shade700,
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              indicatorPadding: EdgeInsets.all(10),
              isScrollable: false,
              controller: _tabController,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 36, bottom: 36),
            height: 80,
            width: 80,
            child: Image.asset(
              'assets/images/trophy.png',
              color: Colors.black26,
            ),
          ),
          Text(
            "You haven't joined any content yet",
            style: TextStyle(fontSize: 12),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.25,
            margin: EdgeInsets.only(top: 24),
            child: FlatButton(
                color: Colors.blue.shade700,
                onPressed: () {},
                child: Text(
                  'CHECKOUT MATCH FIXTURES',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
