// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAKDO9Qje5hYl1dmR3jRAfcBf3Iup2kiUU',
    appId: '1:868635226520:web:645a202143f739585b3bed',
    messagingSenderId: '868635226520',
    projectId: 'fusion-23add',
    authDomain: 'fusion-23add.firebaseapp.com',
    storageBucket: 'fusion-23add.appspot.com',
    measurementId: 'G-PFV21XL5PC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtA3l61iEv6DZW1HRUJIBTUOngg4jWNIc',
    appId: '1:868635226520:android:199111c138dc2d465b3bed',
    messagingSenderId: '868635226520',
    projectId: 'fusion-23add',
    storageBucket: 'fusion-23add.appspot.com',
  );
}