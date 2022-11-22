import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled/api/google_signin_api.dart';

class Login extends StatelessWidget {

  final GoogleSignInAccount user;

  Login({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
          actions: [
            ElevatedButton(
              onPressed: () async{
                await GoogleSignInApi.logout();
                Navigator.of(context).pop();
              },
              child: Text(
                  "Log out"
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: 400,
            child: Column(
              children: [
                SizedBox(width: 18,),
                // CircleAvatar(
                //   radius: 40,
                //   backgroundImage: ,
                //
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 23),

                  child: Text("Name" + user.displayName.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: "Lato",
                        color: Colors.red
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23),

                  child: Text("token" + user.id.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: "Lato",
                        color: Colors.red
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23),

                  child: Text("Email" + user.email.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: "Lato",
                        color: Colors.red
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );

  }


}
