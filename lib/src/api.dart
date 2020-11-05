import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ip_geolocation_api/src/models/geolocation_data.dart';

class GeolocationAPI {
  static Future<GeoLocationData> getData({String query = ''}) async {
    try {
      final response = await http.get('http://ip-api.com/json/$query');

      if (response.statusCode == 200) {
        print(response.body);

        final parsed = jsonDecode(response.body);
        return GeoLocationData.fromJson(parsed);
      }

      print('geolocation api ${response.statusCode}');

      return null;
    } catch (e) {
      print('Error $e');
      return null;
    }
  }
}
