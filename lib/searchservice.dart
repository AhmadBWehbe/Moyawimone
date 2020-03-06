import 'package:cloud_firestore/cloud_firestore.dart';

class SearchService {
  getJobName(String job) {
    return Firestore.instance
        .collection('Users')
        .where('job', isEqualTo: job)
        .getDocuments();
  }
}
