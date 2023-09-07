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
    apiKey: 'AIzaSyDNB0Q5PB1CtyBGqAckfKi75ljlO3PiYU0',
    appId: '1:813658181660:web:1b64d82f45897ba6fecfd9',
    messagingSenderId: '813658181660',
    projectId: 'pifootball',
    authDomain: 'pifootball.firebaseapp.com',
    storageBucket: 'pifootball.appspot.com',
    measurementId: 'G-XKB5CMV6XH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_PJOsz-xtA87Lltva6P62jfq9RK3WWOA',
    appId: '1:813658181660:android:f5f63293be4c21a0fecfd9',
    messagingSenderId: '813658181660',
    projectId: 'pifootball',
    storageBucket: 'pifootball.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD717Nm3QynjdnM5LHrmsQfBxQsrKpdL7g',
    appId: '1:813658181660:ios:89faf590a7ae48ddfecfd9',
    messagingSenderId: '813658181660',
    projectId: 'pifootball',
    storageBucket: 'pifootball.appspot.com',
    iosClientId: '813658181660-dq9146d18e8ufmg3g4ja05pdteecatac.apps.googleusercontent.com',
    iosBundleId: 'com.example.pifootball',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD717Nm3QynjdnM5LHrmsQfBxQsrKpdL7g',
    appId: '1:813658181660:ios:89faf590a7ae48ddfecfd9',
    messagingSenderId: '813658181660',
    projectId: 'pifootball',
    storageBucket: 'pifootball.appspot.com',
    iosClientId: '813658181660-dq9146d18e8ufmg3g4ja05pdteecatac.apps.googleusercontent.com',
    iosBundleId: 'com.example.pifootball',
  );
}