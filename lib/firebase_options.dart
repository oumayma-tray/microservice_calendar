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
    apiKey: 'AIzaSyAsxis4sWitrYBch3k-v2z10qSyl8wcp6o',
    appId: '1:623372766400:web:5b0e7c7f90da25a3967125',
    messagingSenderId: '623372766400',
    projectId: 'authapp-ec7af',
    authDomain: 'authapp-ec7af.firebaseapp.com',
    storageBucket: 'authapp-ec7af.appspot.com',
    measurementId: 'G-9ND8363BNZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAur9eYzldF-G3Oc9s7BUxG4KK1Qc-Av-o',
    appId: '1:623372766400:android:b38d3e49edbce3e1967125',
    messagingSenderId: '623372766400',
    projectId: 'authapp-ec7af',
    storageBucket: 'authapp-ec7af.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCif56Scw54vEkTYUiXMI2nT8DUxu_qK3k',
    appId: '1:623372766400:ios:8d829cee9a5cc804967125',
    messagingSenderId: '623372766400',
    projectId: 'authapp-ec7af',
    storageBucket: 'authapp-ec7af.appspot.com',
    androidClientId: '623372766400-4hj5o057rhvqklohkdtdn0bkr7ja0v8e.apps.googleusercontent.com',
    iosClientId: '623372766400-kbvt0or1v4kpp8olhm2lahv12d00nm98.apps.googleusercontent.com',
    iosBundleId: 'com.example.mobileApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCif56Scw54vEkTYUiXMI2nT8DUxu_qK3k',
    appId: '1:623372766400:ios:8d829cee9a5cc804967125',
    messagingSenderId: '623372766400',
    projectId: 'authapp-ec7af',
    storageBucket: 'authapp-ec7af.appspot.com',
    androidClientId: '623372766400-4hj5o057rhvqklohkdtdn0bkr7ja0v8e.apps.googleusercontent.com',
    iosClientId: '623372766400-kbvt0or1v4kpp8olhm2lahv12d00nm98.apps.googleusercontent.com',
    iosBundleId: 'com.example.mobileApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAsxis4sWitrYBch3k-v2z10qSyl8wcp6o',
    appId: '1:623372766400:web:d02c8c838364d0d0967125',
    messagingSenderId: '623372766400',
    projectId: 'authapp-ec7af',
    authDomain: 'authapp-ec7af.firebaseapp.com',
    storageBucket: 'authapp-ec7af.appspot.com',
    measurementId: 'G-GXHC258G3X',
  );

}