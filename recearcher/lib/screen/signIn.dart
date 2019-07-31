import 'package:flutter/material.dart';

import 'list1.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
          title: Text('sign in'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              SizedBox.fromSize(
                size: Size.fromHeight(0),
              ),
              Image(
                image: AssetImage('img/rec.jpg'),
              ),
              SizedBox.fromSize(
                size: Size.fromHeight(25),
              ),
              TextField(
                controller: nameController,
                  decoration: InputDecoration(
                      labelText: 'name',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(7)),
                      contentPadding: EdgeInsets.all(15),
                      hintText: 'Enter your name',
                      fillColor: Colors.white,
                      filled: true)),
              SizedBox.fromSize(
                size: Size.fromHeight(25),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(7)),
                    contentPadding: EdgeInsets.all(15),
                    hintText: 'Enter your password',
                    fillColor: Colors.white,
                    filled: true),
              ),
              SizedBox.fromSize(
                size: Size.fromHeight(10),
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 1, color: Colors.white70),
                ),
                onPressed: () {
                  var user = nameController.text;
                  print(user);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => list1()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
