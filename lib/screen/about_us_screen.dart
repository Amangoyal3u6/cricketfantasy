import 'dart:convert';

import 'package:cricketfantasy/model/config.dart';
import 'package:cricketfantasy/model/model.dart';
import 'package:cricketfantasy/model/schedule/api_service.dart';
import 'package:flutter/material.dart';

import '../util/vars.dart';
import 'page/custome_drawer.dart';
import 'page/wallet_screen.dart';
import 'package:http/http.dart' as http;

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  String stringResponse;
  List listResponse;
  Map mapResponse;
  Future fetchData() async {
    http.Response response;
    String url = Config.url;
    response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        listResponse = jsonDecode(response.body);
      });
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
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
        // drawer: CustomeDrawer(),
        body: listResponse == null
            ? Container()
            : Container(
                margin: EdgeInsets.only(top: 20, left: 16, right: 16),
                child: Text(listResponse[0]['description'].toString())));
  }
}
