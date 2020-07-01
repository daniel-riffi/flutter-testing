import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'todo.dart';
import 'todo_card.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ToDo> toDos = [
    ToDo(author: 'Daniel', title: 'Hausübung'),
    ToDo(author: 'Matthias', title: 'Müll'),
    ToDo(author: 'Manuel', title: 'Ausarbeitung'),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: GradientAppBar(
      //   title: Text('ToDo'),
      //   backgroundColorStart: Color.fromARGB(255, 121, 57, 255),
      //   backgroundColorEnd: Color.fromARGB(255, 120, 45, 255),
      //   centerTitle: true,
      // ),
      backgroundColor: Color.fromARGB(255, 121, 57, 255),
      body: SafeArea(
        child: Center(
          child: Container(
            // height: 200,
            // width: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 121, 57, 255),
                  Color.fromARGB(255, 191, 110, 255)
                ],
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: toDos.map((toDo) => ToDoCard(toDo: toDo)).toList(),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Color.fromARGB(255, 191, 110, 255),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text("Group"),
            backgroundColor: Color.fromARGB(255, 191, 110, 255),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text("Chat"),
            backgroundColor: Color.fromARGB(255, 191, 110, 255),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
            backgroundColor: Color.fromARGB(255, 191, 110, 255),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        //backgroundColor: Color.fromARGB(255, 191, 110, 255),
        type: BottomNavigationBarType.shifting,
        elevation: 0,
      ),
    );
  }
}
