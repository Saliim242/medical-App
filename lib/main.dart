import 'package:flutter/material.dart';

import 'package:medical_ui_app/screens/home_screen.dart';
import 'package:medical_ui_app/screens/splash_screen.dart';
import 'package:medical_ui_app/themes/theme_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeService>(
      create: (_) => ThemeService(),
      child: Builder(
        builder: (BuildContext context) {
          final themeService = Provider.of<ThemeService>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                brightness:
                    themeService.darkTheme ? Brightness.dark : Brightness.light,
                seedColor: Colors.grey[900]!,
              ),
            ),
            home: SplashScreen(),
          );
        },
      ),
    ),
  );
}
