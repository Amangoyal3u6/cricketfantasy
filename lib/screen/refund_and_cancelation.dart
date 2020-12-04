import 'dart:convert';

import 'package:cricketfantasy/util/vars.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'page/wallet_screen.dart';

class RefundAndPolicy extends StatefulWidget {
  @override
  _RefundAndPolicyState createState() => _RefundAndPolicyState();
}

class _RefundAndPolicyState extends State<RefundAndPolicy> {
  String stringResponse;
  List listResponse;
  Future fetchData() async {
    http.Response response;
    final urlh =
        "https://www.khiladi-world.com/api/v1/refund-and-cancellation-policy/";
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
                    Text(listResponse[0]['description'].toString()),
                  ],
                )));
  }
}
