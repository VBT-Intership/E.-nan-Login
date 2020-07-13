import 'package:flutter/material.dart';
import 'package:login/welcomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  String username;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBody(),
    );
  }

  Widget createBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: ListView(
        children: [
          SizedBox(
            height: 80,
          ),
          Text(
            "Hysys >",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Employee Login",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Welcome!",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontSize: 50, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Please Sign-in to continue",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 30,
          ),
          createForm(),
          SizedBox(
            height: 20,
          ),
          createLoginButton(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget createForm() {
    return Form(
      key: formkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                hintText: "Email adress"),
            validator: (value) {
              if (value.isEmpty) {
                return "Please enter your email adress!";
              } else {
                return null;
              }
            },
            onSaved: (value) {
              username = value;
            },
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              hintText: "Password",
              suffixIcon: createForgotPasswordButton(),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return "Please enter your password!";
              } else {
                return null;
              }
            },
            onSaved: (value) {
              password = value;
            },
          ),
        ],
      ),
    );
  }

  Widget createLoginButton() {
    return Row(
      children: <Widget>[
        Container(
          width: 150,
          height: 50,
          child: FlatButton(
            child: Text("Sign in"),
            textColor: Colors.white,
            color: Colors.blueAccent,
            shape: StadiumBorder(),
            onPressed: () {
              if (formkey.currentState.validate()) {
                formkey.currentState.save();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => WelcomeScreen()));
              }
            },
          ),
        ),
      ],
    );
  }

  Widget createForgotPasswordButton() {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Text(
          "Forgot Password?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.blue, fontSize: 15, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
