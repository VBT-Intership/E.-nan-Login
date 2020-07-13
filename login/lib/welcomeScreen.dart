import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: createBody(),
    );
  }

  Widget createBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          createTickIcon(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Sign in successful!",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome to Hysys",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget createTickIcon() {
    return Image.asset('images/tick_icon.png');
  }
}
