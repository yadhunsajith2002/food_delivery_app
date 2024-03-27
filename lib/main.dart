import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login_or_regstr.dart';
import 'package:food_delivery/models/restoraunt.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => Restaurant(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: context.watch<ThemeProvider>().themeData,
        home: const LoginOrRegister());
  }
}
