// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDoXUIPSNPKMngMAYzitjZtdno67-66fvg',
    appId: '1:13365272644:web:112f240f30bf5be9f25c11',
    messagingSenderId: '13365272644',
    projectId: 'foodzone-8033d',
    authDomain: 'foodzone-8033d.firebaseapp.com',
    storageBucket: 'foodzone-8033d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdsahjxqV1kknfRO0ktc0UZ0vBPckg2dc',
    appId: '1:13365272644:android:901ba09b1a570b8bf25c11',
    messagingSenderId: '13365272644',
    projectId: 'foodzone-8033d',
    storageBucket: 'foodzone-8033d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLt71wAg_f4dr1axL2IhCm5EYBKyTQSPs',
    appId: '1:13365272644:ios:e13c8e535c574054f25c11',
    messagingSenderId: '13365272644',
    projectId: 'foodzone-8033d',
    storageBucket: 'foodzone-8033d.appspot.com',
    iosBundleId: 'com.example.testdemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBLt71wAg_f4dr1axL2IhCm5EYBKyTQSPs',
    appId: '1:13365272644:ios:e13c8e535c574054f25c11',
    messagingSenderId: '13365272644',
    projectId: 'foodzone-8033d',
    storageBucket: 'foodzone-8033d.appspot.com',
    iosBundleId: 'com.example.testdemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDoXUIPSNPKMngMAYzitjZtdno67-66fvg',
    appId: '1:13365272644:web:78fe3d041b1f9676f25c11',
    messagingSenderId: '13365272644',
    projectId: 'foodzone-8033d',
    authDomain: 'foodzone-8033d.firebaseapp.com',
    storageBucket: 'foodzone-8033d.appspot.com',
  );
}
