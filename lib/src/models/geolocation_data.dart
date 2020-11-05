 import 'dart:convert';

GeoLocationData geoLocationDataFromJson(String str) => GeoLocationData.fromJson(json.decode(str));

String geoLocationDataToJson(GeoLocationData data) => json.encode(data.toJson());

class GeoLocationData {
  GeoLocationData({
    this.country,
    this.countryCode,
    this.lat,
    this.lon,
    this.timezone,
    this.ip,
  });

  String country;
  String countryCode;
  double lat;
  double lon;
  String timezone;
  String ip;

  factory GeoLocationData.fromJson(Map<String, dynamic> json) => GeoLocationData(
    country: json["country"],
    countryCode: json["countryCode"],
    lat: json["lat"].toDouble(),
    lon: json["lon"].toDouble(),
    timezone: json["timezone"],
    ip: json["query"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "countryCode": countryCode,
    "lat": lat,
    "lon": lon,
    "timezone": timezone,
    "ip": ip,
  };
}
