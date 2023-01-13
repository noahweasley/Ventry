import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ventry/blocs/theme_bloc/bloc.dart';
import 'package:ventry/localization/strings.dart';
import 'package:ventry/routes/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  runApp(const MyApp());
}

class RouteGenerator {
  static const String homePage = HomePage.routeName;

  /// The route configuration.
  static final GoRouter _router = GoRouter(
    initialLocation: homePage,
    routes: <RouteBase>[
      GoRoute(
        path: homePage,
        builder: (context, state) {
          return BlocProvider<ThemeBloc>(
            create: (_) => ThemeBloc(),
            child: const HomePage(title: Strings.introductionTitle),
          );
        },
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouteGenerator._router,
    );
  }
}
