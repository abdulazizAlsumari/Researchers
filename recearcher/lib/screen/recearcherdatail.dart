import 'package:flutter/material.dart';
import 'recearcher.dart';

class ReacercherDetail extends StatefulWidget {
  ReacercherModel reacercherModel;

  ReacercherDetail(this.reacercherModel);

  @override
  _ReacercherDetailState createState() => _ReacercherDetailState();
}

class _ReacercherDetailState extends State<ReacercherDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Recearcher Details' ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
                margin: EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '${widget.reacercherModel.about}'
                      ,style: TextStyle(fontSize: 30) ),
                )),
          ),
        ],
      ),
    );
  }
}
