import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:template/common/constants/route_keys.dart';
import 'package:template/common/di/injection.dart';
import 'package:template/common/env.dart';
import 'package:template/common/routes/all_routes.dart';
import 'package:template/common/routes/routes.dart';
import 'package:template/common/utils/extension/list_ext.dart';
import 'package:template/common/utils/global_route.dart';

void initApp(Env env) async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Permission.notification.isDenied.then((isDenied) {
  //   if (isDenied) {
  //     Permission.notification.request();
  //   }
  // });

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  AppEnv.setupEnv(env);

  FlutterError.onError = (errorDetails) {
    if (!kDebugMode) {
      if (errorDetails.exception is SocketException) {
        return;
      }
    }
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    if (kDebugMode) {
      return false;
    }

    if (error is SocketException) {
      return false;
    }

    return true;
  };

  getDependencies();

  while (Platform.localeName.isEmpty) {
    await Future.delayed(const Duration(microseconds: 200), () {});
  }

  // if (AppEnv.env == Env.dev && kDebugMode) {
  //   await Upgrader.clearSavedSettings();
  // }

  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: FocusManager.instance.primaryFocus?.unfocus,
        child: MaterialApp(
          title: AppEnv.title,
          themeMode: ThemeMode.light,
          // theme: ThemeData(
          //   useMaterial3: false,
          //   primaryColor: HexColor(colorGreenPrimary),
          //   secondaryHeaderColor: HexColor(colorSandyOrange),
          //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
          //       .copyWith(primary: HexColor(colorGreenPrimary))
          //       .copyWith(secondary: HexColor(colorSandyOrange)),
          //   fontFamily: GoogleFonts.montserrat().fontFamily,
          //   pageTransitionsTheme: const PageTransitionsTheme(
          //     builders: {
          //       TargetPlatform.android: ZoomPageTransitionsBuilder(),
          //       TargetPlatform.iOS: CupertinoWillPopScopePageTransionsBuilder(),
          //     },
          //   ),
          // ),
          initialRoute: RouteKeys.fact,
          routes: routes,
          navigatorKey: navigatorKey,
          navigatorObservers: [
            _NavigatorHistory(),
          ],
        ),
      );

  void init() async {}
}

class _NavigatorHistory extends NavigatorObserver {
  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    if (route?.settings.name == null) {
      return;
    }
    AllRoutes.routeStacks.add(route);
    _printRouteStack();
  }

  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    AllRoutes.routeStacks.removeLastWhere(
      (element) => element?.settings.name == route?.settings.name,
    );
    _printRouteStack();
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    AllRoutes.routeStacks.removeLastWhere(
      (element) => element?.settings.name == oldRoute?.settings.name,
    );
    AllRoutes.routeStacks.add(newRoute);
    _printRouteStack();
  }

  @override
  void didRemove(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    AllRoutes.routeStacks.removeLastWhere(
      (element) => element?.settings.name == route?.settings.name,
    );
    _printRouteStack();
  }

  void _printRouteStack() {
    final routeNames = AllRoutes.routeStacks
        .map(
          (e) => '\'${e?.settings.name}\'',
        )
        .join(', ');

    debugPrint('route stack: [$routeNames]');
  }
}
