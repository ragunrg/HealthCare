import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formkey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  String username;
  submit() {
    final form = _formkey.currentState;
    if (form.validate()) {
      form.save();
      SnackBar snackBar = SnackBar(
        content: Text('Welcome $username!'),
      );
      _scaffoldkey.currentState.showSnackBar(snackBar);
      Timer(Duration(seconds: 2), () {
        Navigator.pop(context, username);
      });
    }
  }

  @override
  Widget build(BuildContext parentContext) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('CREATE ACCOUNT',
            style: GoogleFonts.darkerGrotesque(fontSize: 40)),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Center(
                    child: Text(
                      'Create an Username',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    child: Form(
                      key: _formkey,
                      child: TextFormField(
                        validator: (val) {
                          if (val.trim().length < 3 || val.isEmpty) {
                            return "username too short";
                          } else if (val.trim().length > 12) {
                            return "username too long";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (val) => username = val,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Username",
                            labelStyle: TextStyle(fontSize: 15),
                            hintText: "Must be atleast 3 characters"),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: submit,
                  child: Container(
                    height: 45,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
