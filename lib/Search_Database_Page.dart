import 'package:flutter/material.dart';
import 'package:main_page/searchservice.dart';

import 'searchservice.dart';

void main() => runApp(DataBaseSearch());

class DataBaseSearch extends StatefulWidget {
  @override
  _DataBaseSearchState createState() => _DataBaseSearchState();
}

class _DataBaseSearchState extends State<DataBaseSearch> {
  bool reviewFlag = false;
  var reviews;
  @override
  void initState() {
    super.initState();
    SearchService().getJobName('job');
  }

  //  var queryResultSet = [];
//  var tempSearchStore = [];
//
//  initiateSearch(value) {
//    if (value.length == 0) {
//      setState(() {
//        queryResultSet = [];
//        tempSearchStore = [];
//      });
//    }
//    var capitalizedValue =
//        value.toString().substring(0, 1) + value.toString().substring(1);
//    if (queryResultSet.length == 0 && value.length == 1) {
//      SearchService().searchByName(value).then((QuerySnapshot docs) {
//        for (int i = 0; i < docs.documents.length; i++) {
//          queryResultSet.add(docs.documents[i].data);
//        }
//      });
//    } else {
//      tempSearchStore = [];
//      queryResultSet.forEach((element) {
//        if (element['job'].toString().startsWith(capitalizedValue)) {
//          setState(() {
//            tempSearchStore.add(element);
//          });
//        }
//      });
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              textDirection: TextDirection.rtl,
              onChanged: (val) {
                //initiateSearch(val);
              },
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.arrow_back),
                  iconSize: 20.0,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                contentPadding: EdgeInsets.only(left: 25),
                hintText: 'ابحث عن الخدمة',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0)),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
            padding: EdgeInsets.only(left: 10, right: 10),
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            primary: false,
            shrinkWrap: true,
            //children: tempSearchStore.map((e) => buildResultCard(e)).toList(),
            //children: tempSearchStore.map((e) => buildResultCard(e))
            //  .toList(growable: true),
          )
        ],
      ),
    );
  }
}

Widget buildResultCard(data) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 2,
    child: Container(
      child: Text(
        data['job'],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    ),
  );
}
