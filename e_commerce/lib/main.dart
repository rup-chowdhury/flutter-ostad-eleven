// initial set up
// 1. Folder structure
// 2. Firebase set up
// 3. Firebase crashlytics
// 4. Firebase analytics
// 5. Localization
// 6. Theme
// 7. Routing
// 8. Network Caller

import 'dart:async';

import 'package:e_commerce/app/app.dart';
import 'package:e_commerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // The following lines are the same as previously explained in "Handling uncaught errors"
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    runApp(CraftyBayApp());
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
}