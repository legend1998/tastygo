import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_eat_ui/pages/root_app.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/backlogo.jpg"),
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.15,
                    right: 20,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 20, right: 20),
                      color: Colors.white,
                      child: Text(
                        "TastyGo",
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ))
              ],
            ),
            Form(
                child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 5),
                  decoration: BoxDecoration(border: Border.all()),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "username or phone number",
                        contentPadding:
                            EdgeInsets.only(left: 10, top: 5, bottom: 5),
                        focusedBorder: InputBorder.none),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
                  decoration: BoxDecoration(border: Border.all()),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "password",
                        contentPadding:
                            EdgeInsets.only(left: 10, top: 5, bottom: 5),
                        focusedBorder: InputBorder.none),
                  ),
                ),
                Container(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => RootApp()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // background
                      onPrimary: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ), // foreground
                    ),
                    child: Text("Log In"),
                  ),
                )
              ],
            )),
          ],
        ),
      );
}
