import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:draggable_home/draggable_home.dart';
import '../models/rocket.dart';

class RocketDetailScreen extends StatelessWidget {
  const RocketDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/rocket-detail';

  @override
  Widget build(BuildContext context) {
    final rocket = ModalRoute.of(context)!.settings.arguments as Rocket;
    return DraggableHome(
      alwaysShowLeadingAndAction: true,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      headerExpandedHeight: 0.5,
      title: const Text(
        '🚀 Rockets',
        style: TextStyle(
          color: Color(0xFFe34257),
          fontFamily: 'Pacifico',
          fontSize: 30,
        ),
      ),
      headerWidget: headerWidget(rocket),
      body: [body(context, rocket)],
      curvedBodyRadius: 20,
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }

  Widget headerWidget(Rocket rocket) {
    return FadeInDown(
      duration: const Duration(milliseconds: 500),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: rocket.imageUrl[0],
        placeholder: (context, url) => const Center(
          child: Text(
            '🚀',
            style: TextStyle(fontSize: 60),
          ),
        ),
        errorWidget: (context, url, error) => const Center(
          child: Text(
            '🚀',
            style: TextStyle(fontSize: 60),
          ),
        ),
      ),
    );
  }

  Widget body(BuildContext context, Rocket rocket) {
    final formatCurrency = NumberFormat.simpleCurrency(decimalDigits: 0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInLeftBig(
          delay: const Duration(milliseconds: 500),
          duration: const Duration(milliseconds: 500),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    width: 70,
                    height: 70,
                    imageUrl: rocket.imageUrl[1],
                    placeholder: (context, url) => const Center(
                      child: Text(
                        '🚀',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    errorWidget: (context, url, error) => const Center(
                      child: Text(
                        '🚀',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      rocket.name,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      rocket.country,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              FadeInRight(
                delay: const Duration(milliseconds: 1000),
                duration: const Duration(milliseconds: 1000),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.share,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
        ),
        ZoomIn(
          delay: const Duration(milliseconds: 1000),
          duration: const Duration(milliseconds: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: Text(
                  rocket.description,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 10,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Features",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    FadeInRight(
                      delay: const Duration(milliseconds: 1500),
                      duration: const Duration(milliseconds: 1000),
                      child: Text(
                        "View all",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Number of Engines:',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          rocket.engines.number.toString(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Thrust To Weight:',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          rocket.engines.thrustToWeight.toString(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'success rate:',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '${rocket.successRatePct}%',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Cost per Launch:',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          formatCurrency.format(rocket.costPerLaunch),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Number of Stages:',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          rocket.stages.toString(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


// class RocketDetailScreen extends StatefulWidget {
//   static const routeName = '/rocket-detail';

//   const RocketDetailScreen({Key? key}) : super(key: key);

//   @override
//   State<RocketDetailScreen> createState() => _RocketDetailScreenState();
// }

// class _RocketDetailScreenState extends State<RocketDetailScreen> {
//   final double expandedHeight = 400;
//   final double roundedContainerHeight = 100;

//   @override
//   Widget build(BuildContext context) {
//     final rocket = ModalRoute.of(context)!.settings.arguments as Rocket;
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       body: Stack(
//         children: [
//           CustomScrollView(
//             slivers: [
//               _buildSliverHead(rocket),
//               SliverToBoxAdapter(
//                 child: _buildDetail(rocket),
//               )
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               top: MediaQuery.of(context).padding.top,
//             ),
//             child: SizedBox(
//               height: kToolbarHeight,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).pop();
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 15,
//                       ),
//                       child: Icon(
//                         Icons.arrow_back,
//                         color: Theme.of(context).colorScheme.primary,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 15,
//                     ),
//                     child: Icon(
//                       Icons.menu,
//                       color: Theme.of(context).colorScheme.primary,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildSliverHead(Rocket rocket) {
//     return SliverPersistentHeader(
//       delegate: DetailSliverDelegate(
//         expandedHeight,
//         rocket,
//         roundedContainerHeight,
//       ),
//     );
//   }

//   Widget _buildDetail(Rocket rocket) {
//     final formatCurrency = NumberFormat.simpleCurrency(decimalDigits: 0);

//     return FadeInUp(
//       duration: const Duration(milliseconds: 500),
//       delay: const Duration(milliseconds: 500),
//       child: Container(
//         color: Theme.of(context).colorScheme.surface,
//         child: FadeInLeftBig(
//           delay: const Duration(seconds: 1),
//           duration: const Duration(milliseconds: 500),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // _buildUserInfo(rocket),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 15,
//                   horizontal: 15,
//                 ),
//                 child: Text(
//                   rocket.description,
//                   textAlign: TextAlign.justify,
//                   style: Theme.of(context).textTheme.headline3,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 15,
//                   right: 30,
//                   top: 10,
//                   bottom: 10,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Features",
//                       style: Theme.of(context).textTheme.headline2,
//                     ),
//                     FadeInRight(
//                       delay: const Duration(milliseconds: 1500),
//                       duration: const Duration(milliseconds: 1000),
//                       child: Text(
//                         "View all",
//                         style: Theme.of(context).textTheme.headline2!.copyWith(
//                             color: Theme.of(context).colorScheme.secondary),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 15,
//                   horizontal: 15,
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           'Number of Engines:',
//                           style: Theme.of(context).textTheme.headline2,
//                         ),
//                         const SizedBox(width: 10),
//                         Text(
//                           rocket.engines.number.toString(),
//                           style: Theme.of(context).textTheme.headline3,
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           'Thrust To Weight:',
//                           style: Theme.of(context).textTheme.headline2,
//                         ),
//                         const SizedBox(width: 10),
//                         Text(
//                           rocket.engines.thrustToWeight.toString(),
//                           style: Theme.of(context).textTheme.headline3,
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           'success rate:',
//                           style: Theme.of(context).textTheme.headline2,
//                         ),
//                         const SizedBox(width: 10),
//                         Text(
//                           '${rocket.successRatePct}%',
//                           style: Theme.of(context).textTheme.headline3,
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           'Cost per Launch:',
//                           style: Theme.of(context).textTheme.headline2,
//                         ),
//                         const SizedBox(width: 10),
//                         Text(
//                           formatCurrency.format(rocket.costPerLaunch),
//                           style: Theme.of(context).textTheme.headline3,
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           'Number of Stages:',
//                           style: Theme.of(context).textTheme.headline2,
//                         ),
//                         const SizedBox(width: 10),
//                         Text(
//                           rocket.stages.toString(),
//                           style: Theme.of(context).textTheme.headline3,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
//   final double expandedHeight;
//   final Rocket rocket;
//   final double roundedContainerHeight;

//   DetailSliverDelegate(
//       this.expandedHeight, this.rocket, this.roundedContainerHeight);

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: const SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//         statusBarIconBrightness: Brightness.dark,
//         statusBarBrightness: Brightness.dark,
//       ),
//       child: Stack(
//         children: [
//           Hero(
//             // duration: const Duration(milliseconds: 500),
//             tag: rocket.id,
//             child: CachedNetworkImage(
//               fit: BoxFit.cover,
//               width: MediaQuery.of(context).size.width,
//               height: expandedHeight,
//               imageUrl: rocket.imageUrl[0],
//               placeholder: (context, url) => const Center(
//                 child: Text(
//                   '🚀',
//                   style: TextStyle(fontSize: 60),
//                 ),
//               ),
//               errorWidget: (context, url, error) => const Center(
//                 child: Text(
//                   '🚀',
//                   style: TextStyle(fontSize: 60),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: expandedHeight - roundedContainerHeight - shrinkOffset,
//             left: 0,
//             child: FadeInUp(
//               delay: const Duration(milliseconds: 500),
//               duration: const Duration(milliseconds: 500),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: roundedContainerHeight,
//                 decoration: BoxDecoration(
//                   color: Theme.of(context).colorScheme.surface,
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30),
//                   ),
//                 ),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   child: Row(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(70),
//                         child: CachedNetworkImage(
//                           fit: BoxFit.cover,
//                           width: 70,
//                           height: 70,
//                           imageUrl: rocket.imageUrl[1],
//                           placeholder: (context, url) => const Center(
//                             child: Text(
//                               '🚀',
//                               style: TextStyle(fontSize: 40),
//                             ),
//                           ),
//                           errorWidget: (context, url, error) => const Center(
//                             child: Text(
//                               '🚀',
//                               style: TextStyle(fontSize: 40),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 10,
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               rocket.name,
//                               style: Theme.of(context).textTheme.headline1,
//                             ),
//                             Text(
//                               rocket.country,
//                               style: Theme.of(context).textTheme.headline2,
//                             ),
//                           ],
//                         ),
//                       ),
//                       const Spacer(),
//                       FadeInRight(
//                         delay: const Duration(milliseconds: 1200),
//                         duration: const Duration(milliseconds: 1000),
//                         child: Padding(
//                           padding: const EdgeInsets.only(right: 10),
//                           child: Icon(
//                             Icons.share,
//                             color: Theme.of(context).colorScheme.secondary,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   double get maxExtent => expandedHeight;

//   @override
//   double get minExtent => 0;

//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
//     return true;
//   }
// }
