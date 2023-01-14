import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ventry/firebase_options.dart';
import 'package:ventry/localization/strings.dart';

/// a simple class that handles every app initializations
class AppInitialization {
  static Box? hiveBox;
  static FirebaseApp? firebase;

  /// All app's startup initializations returned as a future
  static Future<void> initialize() async {
    firebase = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  ///  All app's startup initializations that need to run before app runs
  static Future<void> setup() async {
    WidgetsFlutterBinding.ensureInitialized();

    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory(),
    );

    await Hive.initFlutter();
    hiveBox = await Hive.openBox(Strings.hiveBoxName);
  }
}
