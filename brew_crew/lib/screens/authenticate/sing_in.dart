import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
          elevation: 0.0,
          title: Text("Sign in to Brew Crew"),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: (ElevatedButton(
                child: Text("Sign in anonumously"),
                onPressed: () async {
                  dynamic result = await _auth.signInAnon();
                  if (result == 'no user') {
                    print("Trouble signing in");
                  } else {
                    print("User signed in succesfully");
                    print(result.uid);
                  }
                }))));
  }
}
