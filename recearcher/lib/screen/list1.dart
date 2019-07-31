import 'package:flutter/material.dart';
import 'package:recearcher/screen/recearcherdatail.dart';
import 'package:http/http.dart' as http;

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'recearcher.dart';
class list1 extends StatefulWidget {
  @override
  _list1State createState() => _list1State();
}

class _list1State extends State<list1> {
  var recearcher = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Recearcher Items'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: showListView(),
      ),
    );
  }

  showListView() {
    return ListView.builder(
      itemCount: recearcher.length,
      itemBuilder: (context, index) {
        return Card(
            shape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white70,
            child: ListTile(
              title: Text(recearcher[index].subject),
              subtitle: Text(recearcher[index].about),
              trailing: Icon(Icons.search),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ReacercherDetail(recearcher[index]);
                }));
              },
            ));
      },
    );
  }

//  Constructor
  initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response =
    await http.get('https://mrabdullah0102.pythonanywhere.com/api/Research/');
    http.Response response2 =
    await http.get('https://mrabdullah0102.pythonanywhere.com/api/users/');
    // headers: {HttpHeaders.authorizationHeader: "Bearer asdfasdf"},);

    if (response.statusCode == 200) {
      String data = response.body;
      String data2 = response2.body;

      setState(() {
        var decodedData = jsonDecode(data);
        recearcher = decodedData.map((model) => ReacercherModel.fromJson(model)).toList();
      });
    } else {
      print(response.statusCode);
    }
  }
}
