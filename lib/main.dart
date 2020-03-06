import 'package:flutter/material.dart';
import 'package:main_page/Search_Database_Page.dart';

import 'SearchPage.dart';
import 'Test_Page.dart';
import 'main_page.dart';
import 'messaging_page.dart';

void main() => runApp(MAINPAGE());

class MAINPAGE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مياوم',
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            height: 50,
            //color: Colors.white,
            child: Builder(
              builder: (context) => FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => DataBaseSearch());
                  Navigator.push(context, route);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      'ابحث عن خدمات',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    IconButton(
                        iconSize: 30,
                        color: Colors.white,
                        icon: Icon(Icons.search),
                        onPressed: () {
                          showSearch(context: context, delegate: Data());
                        }),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ProfilePage(),
        bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Colors.blue[500],
          items: [
            new BottomNavigationBarItem(
                icon: Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Result());
                      Navigator.push(context, route);
                    },
                    iconSize: 30,
                    color: Colors.black,
                  ),
                ),
                title: new Text('الإعدادات',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black))),
            new BottomNavigationBarItem(
                icon: Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.account_circle),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Result());
                      Navigator.push(context, route);
                    },
                    iconSize: 30,
                    color: Colors.black,
                  ),
                ),
                title: new Text(
                  'صفحتك',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            new BottomNavigationBarItem(
                icon: Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.chat),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Messaging());
                      Navigator.push(context, route);
                    },
                    iconSize: 25,
                    color: Colors.black,
                  ),
                ),
                title: new Text(
                  'محادثة',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            new BottomNavigationBarItem(
                icon: Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {},
                    iconSize: 30,
                  ),
                ),
                title: new Text(
                  'الرئيسية',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
          onTap: (int x) => debugPrint('index $x'),
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,

          //fixedColor: Colors.blue,
        ),

        //fixedColor: Colors.blue,
      ),
    );
  }
}
