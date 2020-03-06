import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:main_page/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage();

  Widget _buildProfileWidgets(BuildContext context, DocumentSnapshot document) {
    return Profile(
      name: document['name'],
      lastname: document['lastname'],
      job: document['job'],
      desc: document['description'],
      phonenb: document['phone number'],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Firestore.instance.collection('Users').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Text("Loading...");
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (BuildContext context, int index) =>
                _buildProfileWidgets(context, snapshot.data.documents[index]),
          );
        },
      ),
    );
  }
}
