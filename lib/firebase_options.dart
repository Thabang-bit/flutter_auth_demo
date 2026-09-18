import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return web;
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCTQEvf6WxIlm5EvmRtlKHqVNzCmFpq1YI',
    authDomain: 'flutter-auth-demo-2df8c.firebaseapp.com',
    projectId: 'flutter-auth-demo-2df8c',
    storageBucket: 'flutter-auth-demo-2df8c.firebasestorage.app',
    messagingSenderId: '996739692976',
    appId: '1:996739692976:web:d6a681ef8acf13de88be75',
  );
}