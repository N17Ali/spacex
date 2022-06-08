import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/rockets.dart';
import './screens/home_screen.dart';
import './screens/rocket_screen.dart';
import './screens/rocket_detail_screen.dart';
import './config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Rockets(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyScrollBehavior(),
        title: 'SpaceX',
        theme: theme,
        home: const HomeScreen(),
        routes: {
          RocketScreen.routeName: (context) => const RocketScreen(),
          RocketDetailScreen.routeName: (context) => const RocketDetailScreen(),
        },
      ),
    );
  }
}
