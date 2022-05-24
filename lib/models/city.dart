class City {
  City({
    required this.name,
    required this.country,
    required this.lat,
    required this.lon,
  });

  City.fromJson(Map<String, dynamic> item)
      : name = item['name'] as String,
        country = item['country'] as String,
        lat = item['lat'] as double,
        lon = item['lon'] as double;

  final String name;
  final String country;
  final double lon;
  final double lat;

  @override
  String toString() {
    return 'City{name: $name, country: $country, lon: $lon, lat: $lat}\n';
  }
}
