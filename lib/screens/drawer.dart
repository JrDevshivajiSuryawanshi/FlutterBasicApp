// import 'dart:html';

import 'package:FlutterBasicApp/screens/home_screen.dart';
import 'package:FlutterBasicApp/screens/newscreen.dart';
import 'package:flutter/material.dart';
// import 'package:FlutterBasicApp/screens/detailscree.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://svg-clipart.com/thumbs/blue/IH4nF93-blue-user-icon-clipart.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'myname',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'email@gamil.com',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: IconButton(icon: Icon(Icons.home), onPressed: null),
            title: Text(
              'HomePage',
              style: TextStyle(fontSize: 21),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detailscreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: IconButton(
                icon: Icon(Icons.supervised_user_circle), onPressed: null),
            title: Text(
              'AdminPage',
              style: TextStyle(fontSize: 21),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewScreens(),
                ),
              );
            },
          ),
          ListTile(
            leading: IconButton(icon: Icon(Icons.person_add), onPressed: null),
            title: Text(
              'profile',
              style: TextStyle(fontSize: 21),
            ),
            onTap: null,
          )
        ],
      ),
    );
  }
}
