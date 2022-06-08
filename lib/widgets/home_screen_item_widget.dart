import 'package:flutter/material.dart';

class HomeScreenItemWidget extends StatelessWidget {
  final String title;
  final String icon;
  final String routeName;

  const HomeScreenItemWidget(
      {Key? key,
      required this.title,
      required this.icon,
      required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: SizedBox(
        height: 60,
        child: Card(
          color: Theme.of(context).colorScheme.surface,
          elevation: 1.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListTile(
            leading: Text(
              icon,
              style: const TextStyle(fontSize: 30),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(routeName);
            },
          ),
        ),
      ),
    );
  }
}
