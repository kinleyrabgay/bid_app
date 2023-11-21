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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyDCcUAqthhQQnuidjjLp0zBYAtMQ6J3PqU',
    appId: '1:999050667905:web:24311782790c3bcc246a80',
    messagingSenderId: '999050667905',
    projectId: 'bidding-c5a9e',
    authDomain: 'bidding-c5a9e.firebaseapp.com',
    storageBucket: 'bidding-c5a9e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDilQPCqwiSjOY_2-rRWyQHv7oyfgXal2w',
    appId: '1:999050667905:android:12c003c79183d2cd246a80',
    messagingSenderId: '999050667905',
    projectId: 'bidding-c5a9e',
    storageBucket: 'bidding-c5a9e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApuySJM-z0JVxHcmv6cp33XQM1opg99M0',
    appId: '1:999050667905:ios:7fbc9ad1b8912331246a80',
    messagingSenderId: '999050667905',
    projectId: 'bidding-c5a9e',
    storageBucket: 'bidding-c5a9e.appspot.com',
    iosBundleId: 'com.example.bidding',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApuySJM-z0JVxHcmv6cp33XQM1opg99M0',
    appId: '1:999050667905:ios:e5d83ebaf501c761246a80',
    messagingSenderId: '999050667905',
    projectId: 'bidding-c5a9e',
    storageBucket: 'bidding-c5a9e.appspot.com',
    iosBundleId: 'com.example.bidding.RunnerTests',
  );
}