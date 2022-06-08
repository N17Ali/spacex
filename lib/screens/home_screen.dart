import 'package:flutter/material.dart';

import '../widgets/home_screen_item_widget.dart';
import './rocket_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpaceX'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),
            HomeScreenItemWidget(
                title: 'Rokcets',
                icon: '🚀',
                routeName: RocketScreen.routeName),
            HomeScreenItemWidget(
                title: 'Dragons',
                icon: '🐲',
                routeName: RocketScreen.routeName),
            HomeScreenItemWidget(
                title: 'Crew',
                icon: '👩‍🚀',
                routeName: RocketScreen.routeName),
            HomeScreenItemWidget(
                title: 'Roadster info',
                icon: '🏎',
                routeName: RocketScreen.routeName),
            HomeScreenItemWidget(
                title: 'Starlink',
                icon: '🛰',
                routeName: RocketScreen.routeName),
            HomeScreenItemWidget(
                title: 'Ships', icon: '🚢', routeName: RocketScreen.routeName),
          ],
        ),
      ),
    );
  }
}
