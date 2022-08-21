//in the name of GOD
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'todo',
    home: Scaffold(
      appBar: AppBar(
        title: Text('TODO list'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.amber,
        elevation: 20,
      ),
      body: ListView(
        children: [
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),


        ],
      ),


    ),
  ));
}

class todo extends StatefulWidget {
  todo({Key? key}) : super(key: key);

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  var todotext;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          setState(() {
            isChecked = true;
          });
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('alireza'),
              Icon(isChecked ? Icons.check_box_rounded : Icons
                  .check_box_outlined)
            ],
          ),
        ));
  }
}
