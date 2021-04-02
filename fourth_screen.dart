import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class screen3 extends StatefulWidget {
  @override
  _screen3State createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chemistry Quiz Questions'),
      ),
      body:    StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('recipient')
              .doc('chemistry')
              .snapshots(),
          builder: (context, snapshot) {
            if (
            // to check the furebase and wait for widget until we extract data from firebase
            snapshot.connectionState==ConnectionState.waiting
            //!snapshot.hasData
            ) {
              return Column(
                children: [
                  SizedBox(height:2,),
                  Center(child: new LinearProgressIndicator(backgroundColor: Colors.blueAccent,minHeight: 5,)),
                  SizedBox(height: 10,)],
              );
            }
            return DisplayUserInformation(context,snapshot);
          }),
    );
  }
  Widget DisplayUserInformation(context, snapshot)
  {
    final userDocument = snapshot.data;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Question 1'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(userDocument['question1']),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            thickness: 1,
            color: Colors.black54,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Question 2'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(userDocument['question2']),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            thickness: 1,
            color: Colors.black54,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Question 3'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(userDocument['question3']),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            thickness: 1,
            color: Colors.black54,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Question 4'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(userDocument['question4']),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            thickness: 1,
            color: Colors.black54,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Question 5'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(userDocument['question5']),
          ),
        ],
      ),
    );
  }
}
