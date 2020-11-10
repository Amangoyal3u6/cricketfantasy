import 'package:cricketfantasy/model/api_service.dart';
import 'package:cricketfantasy/model/model.dart';
import 'package:flutter/material.dart';

import '../util/vars.dart';
import 'page/custome_drawer.dart';
import 'page/wallet_screen.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  ApiService apiService;
  KhiladiModel model;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiService = new ApiService();
    model = new KhiladiModel();
  }

  @override
  Widget build(BuildContext context) {
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
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.only(top: 20, left: 16, right: 16),
            child: FutureBuilder(
              future: apiService.createUser(model).then((value) {
                setState(() {
                  if (value) {
                    print('value : $value');
                  } else {
                    print('no data found');
                  }
                });
              }),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(model.description);
                } else {
                  return Text('Nod data found');
                }
              },
            )),
      ),
    );
  }
}
