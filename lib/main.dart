import 'package:chat/ui/pages/authentication/login/login_screen.dart';
import 'package:chat/ui/pages/authentication/signup/signup_screen.dart';
import 'package:chat/ui/pages/authentication/welcome/welcome_screen.dart';
import 'package:chat/ui/pages/chat/messages/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:chat/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

// Future<void> main () async {
//   runApp(const MyApp());
//
//   DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");
//
//   await ref.set({
//     "name": "John",
//     "age": 18,
//     "address": {
//       "line1": "100 Mountain View"
//     }
//   });
// }
 runApp(const MyApp());

  FirebaseFirestore.instance.collection('mensagens').doc('msg1').snapshots().listen((dado) {
       // print(dado.data());
       // FirebaseFirestore.instance
       //   .collection('socorro')
       //   .doc('a9xTxo0syvsIuAtfn1Ss')
       //   .collection('jesus')
       // .doc().set({'arqname': 'foto.png'});
   });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData (
          color: Colors.blue
        )
      ),
      home: const WelcomeScreen()
    );
  }
}

