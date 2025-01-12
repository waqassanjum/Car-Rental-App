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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC6gv49hf-ax3h4CzE-8fRN0_2QjJa0WUs',
    appId: '1:531468709534:web:8173130885c840f22d958f',
    messagingSenderId: '531468709534',
    projectId: 'car-rental-app-57f19',
    authDomain: 'car-rental-app-57f19.firebaseapp.com',
    storageBucket: 'car-rental-app-57f19.appspot.com',
    measurementId: 'G-V7RXX03S4S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAguYE9suzqxge_Rm5ZErSCSApbNNqlyuQ',
    appId: '1:531468709534:android:82f6fcde19116c8d2d958f',
    messagingSenderId: '531468709534',
    projectId: 'car-rental-app-57f19',
    storageBucket: 'car-rental-app-57f19.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4Tdr2V78La-MakojuPN1Ep6HTvQ2qz9s',
    appId: '1:531468709534:ios:038ebcc9233f247c2d958f',
    messagingSenderId: '531468709534',
    projectId: 'car-rental-app-57f19',
    storageBucket: 'car-rental-app-57f19.appspot.com',
    iosBundleId: 'com.example.carrentalapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC6gv49hf-ax3h4CzE-8fRN0_2QjJa0WUs',
    appId: '1:531468709534:web:46c2e916a915e7b02d958f',
    messagingSenderId: '531468709534',
    projectId: 'car-rental-app-57f19',
    authDomain: 'car-rental-app-57f19.firebaseapp.com',
    storageBucket: 'car-rental-app-57f19.appspot.com',
    measurementId: 'G-MKP38G66EF',
  );

}