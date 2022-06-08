import './Engine.dart';

class Rocket {
  final Engine engines;
  final String name;
  final String type;
  final bool active;
  final int stages;
  final int boosters;
  final int costPerLaunch;
  final int successRatePct;
  final String firstFlight;
  final String country;
  final String company;
  final String wikipedia;
  final String description;
  final String id;
  final List<dynamic> imageUrl;

  Rocket({
    required this.engines,
    required this.name,
    required this.type,
    required this.active,
    required this.stages,
    required this.boosters,
    required this.costPerLaunch,
    required this.successRatePct,
    required this.firstFlight,
    required this.country,
    required this.company,
    required this.wikipedia,
    required this.description,
    required this.id,
    required this.imageUrl,
  });

  factory Rocket.fromjson(Map<String, dynamic> json) {
    return Rocket(
      engines: Engine.fromJson(json['engines']),
      name: json['name'],
      type: json['type'],
      active: json['active'],
      stages: json['stages'],
      boosters: json['boosters'],
      costPerLaunch: json['cost_per_launch'],
      successRatePct: json['success_rate_pct'],
      firstFlight: json['first_flight'],
      country: json['country'],
      company: json['company'],
      wikipedia: json['wikipedia'],
      description: json['description'],
      id: json['id'],
      imageUrl: json['flickr_images'],
    );
  }
}
