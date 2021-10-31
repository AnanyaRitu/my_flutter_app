// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/authenticate/google_sign_in.dart';
import 'package:my_flutter_app/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  GestureBinding.instance?.resamplingEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create:(context)=> GoogleSignInProvider(),
    child: MaterialApp(
      home: Wrapper(),
  ),
    );
  }
