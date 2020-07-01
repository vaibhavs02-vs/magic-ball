import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(

              'Ask Me Anything',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'PatrickHand'
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Answer(),
      ),
    ),
  );
}
class Answer extends StatefulWidget {
  @override
  _Answer createState() => _Answer();
}

class _Answer extends State<Answer> {
  int randomnumber = 6;
  void changeanswer(){
    setState(() {
      randomnumber=Random().nextInt(5)+1;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeanswer();
              },
              child: Image(
                image: AssetImage('images/ball$randomnumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


