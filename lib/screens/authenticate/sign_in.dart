import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/authenticate/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget{
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation:0.0,
        title:Text('Sign in to Auction App'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical:20.0, horizontal:50.0),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary:Colors.white,
            onPrimary:Colors.black,
            minimumSize: Size(double.infinity, 50),
          ),
          icon: FaIcon(FontAwesomeIcons.google, color:Colors.red),
          label: Text('sign in with Google'),
          onPressed:() async{
            final provider=
               Provider.of<GoogleSignInProvider>(context,listen: false);
            provider.googleLogin();

          }
        ),
      ),
    );
  }
}