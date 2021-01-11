import 'package:flutter/material.dart';

class GetId extends StatefulWidget {
  @override
  _GetIdState createState() => _GetIdState();
}

class _GetIdState extends State<GetId> {
  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text(data != null ? data : "no connected get id"),
        ),
      ),
    );
  }
}
