import 'package:cricketfantasy/util/vars.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text(appName),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
              Container(
                child: Text('Rs 50'),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.blue.shade600,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'Add Balance',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Deposited'),
                  Text(
                    'Rs 0',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Divider(),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Winnings'),
                  Text(
                    'Rs 0',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Divider(),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cash Bonus'),
                  Text(
                    'Rs 50',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Divider(),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Referal Bonus'),
                  Text(
                    'Rs 0',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Divider(),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Retainer'),
                  Text(
                    'Rs 0',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Divider(),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Active'),
                  Text(
                    'Rs 0',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                color: Colors.black12.withOpacity(0.05),
                child: ListTile(
                  onTap: () {},
                  title: Text('Transaction History'),
                  trailing: Icon(Icons.keyboard_arrow_right_sharp),
                ),
              ),
              Container(
                color: Colors.black12.withOpacity(0.05),
                child: ListTile(
                  onTap: () {},
                  title: Text('Withdraw History'),
                  trailing: Icon(Icons.keyboard_arrow_right_sharp),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
