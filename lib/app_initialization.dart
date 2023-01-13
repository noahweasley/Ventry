import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'firebase_options.dart';

/// a simple class that handles every app initializations
class AppInitialization {
  /// All app's startup initializations returned as a future
  static Future<void> initialize() async {
    // ignore: unused_local_variable
    FirebaseApp app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
