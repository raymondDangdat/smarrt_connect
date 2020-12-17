import 'package:flutter/material.dart';
import 'package:smarrt_connect/pages/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); 
  // To have the ability to use timestamp
  Firestore.instance.settings(timestampsInSnapshotsEnabled: true).then((_) {
    print("Timestamps enabled in snapshots\n");
  }, onError: (_) {
    print("Error enabling Timestamps in snapshot\n");
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // Check Color Tool - Material Design to choose color of your choice == material.io
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.teal),
      title: 'Smart Connect',
      home: Home(),
    );
  }
} 
