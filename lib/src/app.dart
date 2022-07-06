import 'package:flutter/material.dart';

import 'pages/router/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var routerDelegate = AppRouterDelegate();
  var routerInformationParser = AppRouterInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: routerInformationParser,
    );
  }
}
