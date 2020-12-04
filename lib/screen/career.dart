import 'dart:convert';

import 'package:cricketfantasy/screen/page/wallet_screen.dart';
import 'package:cricketfantasy/util/vars.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CareerScreen extends StatefulWidget {
  @override
  _CareerScreenState createState() => _CareerScreenState();
}

class _CareerScreenState extends State<CareerScreen> {
  String stringResponse;
  List listResponse;
  Map mapResponse;
  Future fetchData() async {
    http.Response response;
    final urlh = "https://www.khiladi-world.com/api/v1/career/";
    String url = urlh;
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
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 12),
                      alignment: Alignment.topLeft,
                      child: Text(
                        listResponse[0]['title'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 12),
                      alignment: Alignment.topLeft,
                      child: Text(
                        listResponse[0]['description'].toString(),
                        style: TextStyle(),
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.only(bottom: 12),
                      alignment: Alignment.topLeft,
                      child: Text(
                        listResponse[1]['title'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 12),
                      alignment: Alignment.topLeft,
                      child: Text(
                        listResponse[1]['description'].toString(),
                        style: TextStyle(),
                      ),
                    ),
                    Divider(),
                  ],
                )));
  }
}
