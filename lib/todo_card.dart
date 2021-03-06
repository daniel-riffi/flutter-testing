import 'package:flutter/material.dart';
import 'todo.dart';

class ToDoCard extends StatelessWidget {
  final ToDo toDo;

  ToDoCard({this.toDo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: RaisedButton(
        onPressed: () {},
        padding: EdgeInsets.all(16.0),
        //icon: Icon(Icons.delete, color: Colors.deepPurple),
        color: Colors.white,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.deepPurple)), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '${toDo.title}',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                  fontSize: 20.0),
            ),
            Text(
              '${toDo.author}',
              style: TextStyle(
                  color: Colors.deepPurple, 
                  letterSpacing: 3.0, 
                  fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
