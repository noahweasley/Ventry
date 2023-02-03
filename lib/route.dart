import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ventry/app_initialization.dart';
import 'package:ventry/blocs/home_screen_bloc/home_bloc.dart';
import 'package:ventry/blocs/home_screen_bloc/states.dart';
import 'package:ventry/blocs/login_bloc/login_bloc.dart';
import 'package:ventry/blocs/theme_bloc/theme_bloc.dart';
import 'package:ventry/common/constants.dart';
import 'package:ventry/localization/strings.dart';
import 'package:ventry/routes/home_page.dart';
import 'package:ventry/routes/intro_page.dart';
import 'package:ventry/routes/login_page.dart';

class RouteGenerator {
  static const String introPageRouteName = IntroPage.routeName;
  static const String homePageRouteName = HomePage.routeName;
  static const String loginPageRouteName = LoginPage.routeName;

  /// private constructor; use static methods
  RouteGenerator._();

  /// The route configuration.
  static final GoRouter router = GoRouter(
    initialLocation: RouteGenerator._getInitialLocation(),
    routes: <RouteBase>[
      GoRoute(
        path: introPageRouteName,
        builder: (context, state) {
          return BlocProvider<ThemeBloc>(
            create: (_) => ThemeBloc(),
            child: const IntroPage(title: Strings.onboardingTitle),
          );
        },
      ),
      GoRoute(
        path: homePageRouteName,
        builder: ((context, state) {
          return BlocProvider<HomeBloc>(
            create: (_) => HomeBloc(HomeState()),
            child: const HomePage(),
          );
        }),
        routes: <RouteBase>[
          GoRoute(
            path: loginPageRouteName,
            builder: ((context, state) {
              return BlocProvider<LoginBloc>(
                create: (_) => LoginBloc(),
                child: const LoginPage(),
              );
            }),
          )
        ],
      )
    ],
  );

  static String _getInitialLocation() {
    final hive = AppInitialization.hiveBox;

    final initialPageRouteName = hive?.get(
      Constants.homeKey,
      defaultValue: introPageRouteName,
    );

    return initialPageRouteName;
  }
}
