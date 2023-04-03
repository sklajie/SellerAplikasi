import 'package:flutter/material.dart';
import 'daftar.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 33, left: 33),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SIGN-IN",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Username"),
                  )),
              TextField(
                autocorrect: false,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(prefixIcon: Icon(Icons.person)),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  height: 30,
                  child: Align(
                      alignment: Alignment.topLeft, child: Text("Password"))),
              TextField(
                autocorrect: false,
                obscureText: isHidden,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                    prefixIcon: Icon(Icons.vpn_key),
                    suffix: IconButton(
                        onPressed: () {
                          if (isHidden == true) {
                            isHidden = false;
                          } else {
                            isHidden = true;
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.remove_red_eye))),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding:
                        EdgeInsets.symmetric(horizontal: 145, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account ?"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Daftar(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign-up now",
                          style: TextStyle(color: Colors.amber[600]),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 1,
                width: 150,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
