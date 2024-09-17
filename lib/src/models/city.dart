part of models;

@freezed
class City with _$City {
  const factory City({
    required String name,
    required String country,
    required double lon,
    required double lat,
  }) = City$;

  factory City.fromJson(Map<dynamic, dynamic> json) => _$CityFromJson(Map<String, dynamic>.from(json));
}
