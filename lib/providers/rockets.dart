import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/rocket.dart';

class Rockets with ChangeNotifier {
  List<Rocket> _items = [];

  List<Rocket> get items {
    return [..._items];
  }

  Future<void> fetchRockets() async {
    final url = Uri.parse('https://api.spacexdata.com/v4/rockets');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body) as List<dynamic>?;

      if (extractedData == null) return;
      _items = extractedData.map((item) => Rocket.fromjson(item)).toList();

      notifyListeners();
    }
  }
}
