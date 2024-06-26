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
    apiKey: 'AIzaSyDVu3ulXAlnzCmUtOZFS20U3HUUo_f9Ejo',
    appId: '1:764475060735:web:86df0a5da0a4db8a8877ca',
    messagingSenderId: '764475060735',
    projectId: 'linnonlineshop',
    authDomain: 'linnonlineshop.firebaseapp.com',
    databaseURL: 'https://linnonlineshop-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'linnonlineshop.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNlXlLdQAp_3zSgzBcKGqvN31HLUC3oI8',
    appId: '1:764475060735:android:1204c034b0e3e8dd8877ca',
    messagingSenderId: '764475060735',
    projectId: 'linnonlineshop',
    databaseURL: 'https://linnonlineshop-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'linnonlineshop.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7WtU2mmIOMm7T3wC2P4crRKpkdY7P0o8',
    appId: '1:764475060735:ios:79377ea6f63d07ac8877ca',
    messagingSenderId: '764475060735',
    projectId: 'linnonlineshop',
    databaseURL: 'https://linnonlineshop-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'linnonlineshop.appspot.com',
    androidClientId: '764475060735-0cl6fd2uvcdv8d0hm8f98spusl546bac.apps.googleusercontent.com',
    iosBundleId: 'com.example.onlineshop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7WtU2mmIOMm7T3wC2P4crRKpkdY7P0o8',
    appId: '1:764475060735:ios:15d2ca57b0c10d908877ca',
    messagingSenderId: '764475060735',
    projectId: 'linnonlineshop',
    databaseURL: 'https://linnonlineshop-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'linnonlineshop.appspot.com',
    androidClientId: '764475060735-0cl6fd2uvcdv8d0hm8f98spusl546bac.apps.googleusercontent.com',
    iosBundleId: 'com.example.onlineshop.RunnerTests',
  );
}
