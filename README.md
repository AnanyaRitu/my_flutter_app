# my_flutter_app

A new Flutter project.

## Packages used

  firebase_auth: ^0.20.1  // for authentication
  
  cloud_firestore: ^0.16.0+1 
  
  google_sign_in: ^4.5.9 // for authentication
  
  font_awesome_flutter: ^9.2.0 //to use google icon in sign in button
  
  provider: ^6.0.1 // state management
  
  
 ## Problems faced
 
--> Cannot resolve symbol ' Properties' and 'Gradle' in app/build.gradle file
    ->  File>Project Structure> Project SDK  added Android API 30  platform
    -> in module added Adroid API 30 Platform
    -> Changed GradleException name to FileNotFoundException

--> FlutterFirebaseCorePlugin.java uses or overrides a deprecated API
    -> set minSdkVersion to 23
--> Cannot run with sound null safety, because the following dependencies
     don't support null safety
    -> flutter run --no-sound-null-safety
    for release aok
    -> flutter build apk --release --no-sound-null-safety

     


