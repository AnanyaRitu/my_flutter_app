import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_flutter_app/screens/authenticate/google_sign_in.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged in'),
        centerTitle: true,
         actions:[
           TextButton(
          child: Text('Logout', style:TextStyle(color: Colors.black)),
             onPressed: () {
               final provider=
               Provider.of<GoogleSignInProvider>(context,listen: false);
               provider.logout();},
         )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color:Colors.blueGrey,
          child: ElevatedButton(
            child: Text('Add items', style:TextStyle(color: Colors.black)),
            onPressed: () {},
      )

      )
    );
  }
}