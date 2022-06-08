import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:card_swiper/card_swiper.dart';

import '../providers/rockets.dart';
import '../widgets/rocket_item.dart';

class RocketScreen extends StatelessWidget {
  const RocketScreen({Key? key}) : super(key: key);
  static const routeName = '/rocket';

  @override
  Widget build(BuildContext context) {
    final rockets = Provider.of<Rockets>(context, listen: false);
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('🚀 Rockets'),
      ),
      body: FutureBuilder(
        future: rockets.fetchRockets(),
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Center(
                    child: SizedBox(
                      height: mediaQuery.height * 0.6,
                      child: Swiper(
                        autoplay: true,
                        curve: Curves.easeInOut,
                        viewportFraction: 0.75,
                        scale: 0.8,
                        fade: 0.7,
                        loop: true,
                        itemCount: rockets.items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return RocketItem(
                              rocket: rockets.items[index],
                              mediaQuery: mediaQuery);
                        },
                      ),
                    ),
                  ),
      ),
    );
  }
}



                    // child: CarouselSlider(
                    //   options: CarouselOptions(
                    //     height: 370.0,
                    //     aspectRatio: 16 / 9,
                    //     viewportFraction: 0.70,
                    //     enlargeCenterPage: true,
                    //     pageSnapping: true,
                    //     enableInfiniteScroll: true,
                    //     autoPlay: true,
                    //     autoPlayInterval: const Duration(seconds: 5),
                    //     autoPlayAnimationDuration: const Duration(seconds: 1),
                    //     autoPlayCurve: Curves.fastOutSlowIn,
                    //   ),
                    //   items: rockets.items.map(
                    //     (rocket) {
                    //       return Builder(
                    //         builder: (BuildContext context) {
                    //           return RocketItem(
                    //               rocket: rocket, mediaQuery: mediaQuery);
                    //         },
                    //       );
                    //     },
                    //   ).toList(),
                    // ),