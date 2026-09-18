import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
import 'auth_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const AuthDemoApp());
}

class AuthDemoApp extends StatelessWidget {
  const AuthDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const AuthGate(),
    );
  }
}