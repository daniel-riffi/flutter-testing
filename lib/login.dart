import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void btnLoginClicked(BuildContext context) {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();
    if (username == 'Dani' && password == 'mali123') {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextField(
                          controller: usernameController,
                          autofocus: false,
                          style: TextStyle(
                              fontSize: 22.0, color: Color(0xFFbdc6cf)),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Username',
                            contentPadding: const EdgeInsets.only(
                                left: 20.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextField(
                          controller: passwordController,
                          autofocus: false,
                          style: TextStyle(
                              fontSize: 22.0, color: Color(0xFFbdc6cf)),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Password',
                            contentPadding: const EdgeInsets.only(
                                left: 20.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      RaisedButton(
                        onPressed: () {
                          btnLoginClicked(context);
                        }, //() => btnLoginClicked(context),
                        color: Colors.white,
                        elevation: 5.0,
                        padding: const EdgeInsets.only(
                            left: 20.0, bottom: 12.0, top: 12.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.7),
                            side: BorderSide(color: Colors.deepPurple)),
                        child: Text("LOGIN",
                            style: TextStyle(
                                fontSize: 22.0, color: Color(0xFFbdc6cf))),
                      )
                    ],
                  ),
                ),
              )),
        )));
  }
}
