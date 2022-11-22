import 'package:flutter/material.dart';
import 'package:untitled/api/google_signin_api.dart';
import 'package:untitled/login.dart';


class SocialAuth extends StatefulWidget {
  const SocialAuth({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<SocialAuth> createState() => _SocialAuthState();
}

class _SocialAuthState extends State<SocialAuth> {
  bool isProgressing = false;
  bool isLoggedIn = false;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child:Scaffold(
            body: Center(
              child: Container(
                  margin: EdgeInsets.only(top: 2,left:69,right: 69),
                  height: 163,
                  width: 86,
                  child: ElevatedButton(onPressed: () {
                    signIn();
                  }, child: Text("Sign In"),
                    style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Color(0xffDC3545)),
                    ),

                  )
              ),
            ),
          )
      );
  }
  Future signIn() async {

    final user= await GoogleSignInApi.login();
    print(user);
    if(user==null)
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign in failed")));
    }
    else
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login(user: user,)));
  }
}
