import 'package:flutter/material.dart';

class DeleteDel extends StatefulWidget {
  @override
  _DeleteDelState createState() => _DeleteDelState();
}

class _DeleteDelState extends State<DeleteDel> {
  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text(data != null ? data : "no connected delete"),
        ),
      ),
    );
  }
}
