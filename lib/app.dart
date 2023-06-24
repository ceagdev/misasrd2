import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:misasrd2/constants/contants.dart';
import 'package:misasrd2/welcomescreen/presentation/pages/splash_screen.dart';
import 'themes/my_theme.dart';

import 'flavors/flavors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: MyTheme.lightTheme,
      home: _flavorBanner(
        child: const SplashScreen(),
        show: kDebugMode,
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
        location: BannerLocation.topStart,
        message: F.name,
        color: Colors.green.withOpacity(0.6),
        textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
            letterSpacing: 1.0),
        textDirection: TextDirection.ltr,
        child: child,
      )
          : Container(
        child: child,
      );
}