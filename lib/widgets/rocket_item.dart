import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/rocket.dart';
import '../screens/rocket_detail_screen.dart';

class RocketItem extends StatelessWidget {
  final Size mediaQuery;
  final Rocket rocket;

  const RocketItem({Key? key, required this.rocket, required this.mediaQuery})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Navigator.of(context)
            .pushNamed(RocketDetailScreen.routeName, arguments: rocket);
      },
      child: Card(
        color: Theme.of(context).colorScheme.surface,
        elevation: 1.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              child: CachedNetworkImage(
                height: mediaQuery.height * 0.45,
                width: double.infinity,
                fit: BoxFit.cover,
                imageUrl: rocket.imageUrl[0],
                placeholder: (context, url) => const Center(
                  child: Text(
                    '🚀',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => const Center(
                  child: Text(
                    '🚀',
                    style: TextStyle(fontSize: 60),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              rocket.name,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'First Flight: ${rocket.firstFlight}',
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
