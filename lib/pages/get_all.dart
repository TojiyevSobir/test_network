import 'package:flutter/material.dart';
import 'package:test_network/services/network1.dart';



class GetAll extends StatefulWidget {
  @override
  _GetAllState createState() => _GetAllState();
}

class _GetAllState extends State<GetAll> {
  String data;


  void _apiGetAll(){
    Network1.GET(Network1.API_LIST, Network1.paramsEmpty()).then((response) => {
      print("------->>>>>>"+response),
      _showResponse(response),
    });
  }


  void _showResponse(String datee) {
    setState(() {
      data = datee;
    });
  }
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _apiGetAll();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text(data != null ? data : "no connected"),
        ),
      ),

    );
  }
}
