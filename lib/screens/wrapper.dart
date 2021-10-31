import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/authenticate/authenticate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_flutter_app/screens/home/home.dart';
import 'package:firebase_core/firebase_core.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold (
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return Center (child: CircularProgressIndicator());
      } else if(snapshot.hasData){
          return Home();
        }else if(snapshot.hasError){
          return Center(child: Text ('Something Went Wrong!'));
        } else{
          return Authenticate();
        }
  },
    ),
  );

}
