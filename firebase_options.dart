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
    apiKey: 'AIzaSyCBlnJoXoTKD5vxH-IH8LOJGBw42Sxbl6o',
    appId: '1:376716543748:web:bea805b677e96089e87251',
    messagingSenderId: '376716543748',
    projectId: 'ilead-df65e',
    authDomain: 'ilead-df65e.firebaseapp.com',
    storageBucket: 'ilead-df65e.appspot.com',
    measurementId: 'G-JBFN3VJ3NL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5QushtlM3NEH73faNVB8wl0pyVDFXSjE',
    appId: '1:376716543748:android:c89836db42d22c5ee87251',
    messagingSenderId: '376716543748',
    projectId: 'ilead-df65e',
    storageBucket: 'ilead-df65e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQxmTEkSjNJtfbgxDN-mVJ7WVFokGmMEQ',
    appId: '1:376716543748:ios:832b4749440ee110e87251',
    messagingSenderId: '376716543748',
    projectId: 'ilead-df65e',
    storageBucket: 'ilead-df65e.appspot.com',
    iosClientId: '376716543748-m0bbf4ojsj3h41tblnl84pqk0889m7hr.apps.googleusercontent.com',
    iosBundleId: 'com.example.ilead',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQxmTEkSjNJtfbgxDN-mVJ7WVFokGmMEQ',
    appId: '1:376716543748:ios:d7d1f4768ad1b46fe87251',
    messagingSenderId: '376716543748',
    projectId: 'ilead-df65e',
    storageBucket: 'ilead-df65e.appspot.com',
    iosClientId: '376716543748-ojvfqomh35ii3is7t94dpkr8604fatio.apps.googleusercontent.com',
    iosBundleId: 'com.example.ilead.RunnerTests',
  );
}
