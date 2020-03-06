import 'package:flutter/material.dart';
import 'package:main_page/main.dart';

import 'messaging_page.dart';

void main() {
  runApp(MaterialApp(
    home: Result(),
    title: 'Results page',
  ));
}

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('عنوان الصفحة'),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),
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
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )),
          new BottomNavigationBarItem(
              icon: Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => MAINPAGE());
                    Navigator.push(context, route);
                  },
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
    );
  }
}
