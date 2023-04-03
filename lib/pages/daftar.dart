import 'package:flutter/material.dart';
import 'login.dart';

class Daftar extends StatefulWidget {
  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 33, left: 33),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SIGN-UP",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Nama toko"))),
                TextField(
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(prefixIcon: Icon(Icons.store)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Nama pemilik"))),
                TextField(
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      InputDecoration(prefixIcon: Icon(Icons.person_pin_sharp)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                        alignment: Alignment.topLeft, child: Text("Username"))),
                TextField(
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(prefixIcon: Icon(Icons.person)),
                ),
                SizedBox(
                  height: 20,
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
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign-up"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      padding:
                          EdgeInsets.symmetric(horizontal: 138, vertical: 15),
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
                      Text("Have an account ?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign-in now",
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
                  color: Color.fromARGB(255, 41, 41, 41),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
