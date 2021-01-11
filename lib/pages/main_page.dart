import 'package:flutter/material.dart';
import 'package:test_network/pages/delete_del.dart';
import 'package:test_network/pages/get_id.dart';
import 'package:test_network/pages/post_craete.dart';
import 'package:test_network/pages/put_update.dart';



import 'get_all.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _pages = [
    GetAll(),
    GetId(),
    PostCreate(),
    PutApdate(),
    DeleteDel(),
  ];
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[indexPage],
      bottomNavigationBar: BottomNavigationBar(

        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        elevation: 0,
        onTap: (value) {
          setState(() {
            indexPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(label: 'Get All', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Get Id', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:'Post', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:'Put', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Del', icon: Icon(Icons.home)),
        ],
      ),
    );
  }
}
