import 'package:flutter/material.dart';

import 'list1.dart';
import 'signIn.dart';

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Recearcher',style: TextStyle(color: Colors.blue),),
      ),
      body: Container(
        padding: EdgeInsets.all(10),

        child: ListView(
          children: <Widget>[
            SizedBox.fromSize(size: Size.fromHeight(0),),
            Image(
              image: AssetImage('img/rec.jpg'),
            ),
            SizedBox.fromSize(size: Size.fromHeight(25),),
            TextField(
              decoration: InputDecoration(
                labelText: 'name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Enter your name',
                  fillColor: Colors.white,
                  filled: true),
              
            ),
            SizedBox.fromSize(size: Size.fromHeight(25),),
            TextField(
              decoration: InputDecoration(
                  labelText: 'lastName',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Enter your lastName',
                  fillColor: Colors.white,
                  filled: true),
            ),
            SizedBox.fromSize(size: Size.fromHeight(25),),
            TextField(
              decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Enter your password',
                  fillColor: Colors.white,
                  filled: true),
            ),
            SizedBox.fromSize(size: Size.fromHeight(25),),
            TextField(
              decoration: InputDecoration(
                  labelText: 'e-mail',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Enter your e-mail',
                  fillColor: Colors.white,
                  filled: true),
            ),
            SizedBox.fromSize(size: Size.fromHeight(25),),
            TextField(
              decoration: InputDecoration(
                  labelText: 'phone',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Enter your password',
                  fillColor: Colors.white,
                  filled: true),
            ),

            SizedBox.fromSize(size: Size.fromHeight(10),),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                'GET STARTED',
                style: TextStyle(
                    fontSize: 16, letterSpacing: 1, color: Colors.white70),
              ), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => list1()),
              );
            },
              ),
      RaisedButton(
      color: Colors.blue,
      child: Text(
        'SIGN IN',
        style: TextStyle(
            fontSize: 16, letterSpacing: 1, color: Colors.white70),
      ), onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => signIn()),
      );
    },
    )
          ],
        ),
      ),
    );
  }
}
