import 'dart:convert';

import 'package:search_location_weather_app/constants.dart';
import 'package:http/http.dart' as http;
import 'package:search_location_weather_app/models/weather_model.dart';

class WeatherService {
  final String baseUrl = "https://api.weatherapi.com/v1/current.json";

  Future<ApiResponse> getCurrentWeather(String location) async {
    String apiUrl = "$baseUrl?key=$apiKey&q=$location";

    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        return ApiResponse.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Failed to load weather");
      }
    } catch (e) {
      throw Exception("Failed to load weather");
    }
  }
}
