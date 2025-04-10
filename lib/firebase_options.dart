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
    apiKey: 'AIzaSyD-ET7AOe497p532fluMPklegasnAqoh2Q',
    appId: '1:380031462364:web:ccd4451e5624ff0559bd19',
    messagingSenderId: '380031462364',
    projectId: 'attentance-system-eae95',
    authDomain: 'attentance-system-eae95.firebaseapp.com',
    storageBucket: 'attentance-system-eae95.firebasestorage.app',
    measurementId: 'G-82BHJ1TTZ4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYDXHbhwutTgN73gQDcz5CrWho62RaMT0',
    appId: '1:380031462364:android:10327389997b7a2c59bd19',
    messagingSenderId: '380031462364',
    projectId: 'attentance-system-eae95',
    storageBucket: 'attentance-system-eae95.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJ0Kng33a51zBTJ4Cu-tJ4RSmz35Wsz7s',
    appId: '1:380031462364:ios:8ef93d473492602859bd19',
    messagingSenderId: '380031462364',
    projectId: 'attentance-system-eae95',
    storageBucket: 'attentance-system-eae95.firebasestorage.app',
    iosBundleId: 'com.example.emplyeesapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJ0Kng33a51zBTJ4Cu-tJ4RSmz35Wsz7s',
    appId: '1:380031462364:ios:8ef93d473492602859bd19',
    messagingSenderId: '380031462364',
    projectId: 'attentance-system-eae95',
    storageBucket: 'attentance-system-eae95.firebasestorage.app',
    iosBundleId: 'com.example.emplyeesapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD-ET7AOe497p532fluMPklegasnAqoh2Q',
    appId: '1:380031462364:web:a3e6069ce64218c359bd19',
    messagingSenderId: '380031462364',
    projectId: 'attentance-system-eae95',
    authDomain: 'attentance-system-eae95.firebaseapp.com',
    storageBucket: 'attentance-system-eae95.firebasestorage.app',
    measurementId: 'G-J96WY1NVTV',
  );
}
