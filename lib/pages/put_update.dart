import 'package:flutter/material.dart';

class PutApdate extends StatefulWidget {
  @override
  _PutApdateState createState() => _PutApdateState();
}

class _PutApdateState extends State<PutApdate> {
  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text(data != null ? data : "no connected put"),
        ),
      ),
    );
  }
}
