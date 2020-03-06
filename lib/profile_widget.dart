import 'package:flutter/material.dart';
import 'package:main_page/Profile_Page.dart';
import 'package:meta/meta.dart';

class Profile extends StatelessWidget {
  final String job;
  final String desc;
  final String name;
  final String lastname;
  final String phonenb;

  const Profile({
    Key key,
    @required this.job,
    @required this.desc,
    @required this.name,
    @required this.lastname,
    @required this.phonenb,
  })  : assert(job != null),
        assert(desc != null),
        assert(name != null),
        assert(lastname != null),
        assert(phonenb != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Route route = MaterialPageRoute(
            builder: (context) => ProfileDesc(
                  name1: name,
                  job1: job,
                  lastname1: lastname,
                  desc1: desc,
                  phonenb1: phonenb,
                ));
        Navigator.push(context, route);
      },
      padding: EdgeInsets.all(0),
      child: Container(
        height: 200,
        //width: 340,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 70,
              //width: 340,
              color: Colors.blue[100],
              padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.more_vert),
                  Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(name + " " + lastname),
                          Text(phonenb),
                        ],
                      ),
                      Icon(
                        Icons.account_circle,
                        size: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              //width: 340,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Text(
                      desc,
                      textAlign: TextAlign.right,
                      //overflow: TextOverflow.ellipsis,
                    ),
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(2),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Center(
                        child: Text(
                      job,
                      style: TextStyle(fontSize: 25),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
