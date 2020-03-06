import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My app",
    home: new Search(),
  ));
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          height: 50,
          //color: Colors.white,
          child: FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              showSearch(context: context, delegate: Data());
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
    );
  }
}

class Data extends SearchDelegate<String> {
  final jobList = [
    'بلاط',
    'دهان',
    'وراق',
    'كهربائي منزل',
    'كهربائي سيارات',
    'عامل نظافة',
    'دلفري',
    'ميكانيكي',
    'حداد',
    'سكاف',
    'مزارع',
    'سنغري',
    '',
    'خادم منزل',
    'خياط',
    'حلاق'
  ];
  final searchHistory = [
    'بلاط',
    'دهان',
    'وراق',
    'كهربائي منزل',
    'كهربائي سيارات',
    'عامل نظافة',
    'دلفري',
    'ميكانيكي',
    'حداد',
    'سكاف',
    'مزارع',
    'سنغري',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("asd");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestion = query.isEmpty
        ? searchHistory
        : jobList.where((s) => s.startsWith(query)).toList();
    return ListView.builder(
      addAutomaticKeepAlives: false,
      itemBuilder: (context, index) => ListTile(
          onTap: () {
            showResults(context);
          },
          leading: Icon(Icons.verified_user),
          title: RichText(
            text: TextSpan(
                text: suggestion[index].substring(0, query.length),
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                      text: suggestion[index].substring(query.length),
                      style: TextStyle(color: Colors.grey, fontSize: 18))
                ]),
          )),
      itemCount: suggestion.length,
    );
  }
}
