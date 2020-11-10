import 'package:flutter/material.dart';

class ProfileNewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Column(
                    children: [
                      Text("abhishek"),
                      Text(
                        'level 1',
                        style: TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Text("Rs 50"),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.warning_outlined,
                    color: Colors.white,
                  ),
                  trailing: Text(
                    'VERIFY NOW',
                    style: TextStyle(color: Colors.white),
                  ),
                  title: Text(
                    'Profile Unverified',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                padding: EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'MY REWARDS',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Image.asset(
                                "assets/images/medal.png",
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "You have'nt earned any rewards yet",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blue.shade800.withOpacity(0.5),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                padding: EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'OFFERS',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          Container(
                            width: 180,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Offer code',
                                  hintStyle:
                                      TextStyle(color: Colors.blue.shade800)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                "APPLY",
                                style: TextStyle(
                                  color: Colors.blue.shade800,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blue.shade800.withOpacity(0.5),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                padding: EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'FRIENDS',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "You have'nt invited your friend till now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        'INVITE FRIENDS &EARN RS 25',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue.shade600,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blue.shade800.withOpacity(0.5),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                padding: EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PERSONAL DETAILS',
                            style: TextStyle(
                              color: Colors.blue.shade600,
                            ),
                          ),
                          Text(
                            'Full Profile',
                            style: TextStyle(
                              color: Colors.blue.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Container(
                              child: Icon(
                            Icons.person,
                            color: Colors.blue.shade600,
                          )),
                          Container(
                            child: Text(
                              'abhishek',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Container(
                              child: Icon(
                            Icons.mail,
                            color: Colors.blue.shade600,
                          )),
                          Container(
                            child: Text(
                              'abhi@gmail.com',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Container(
                              child: Icon(
                            Icons.phone,
                            color: Colors.blue.shade600,
                          )),
                          Container(
                            child: Text(
                              '+91 9589243602',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'Change Password',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue.shade600,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          child: FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              'Logout',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.blue.shade600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blue.shade800.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
