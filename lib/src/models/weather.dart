part of models;

@freezed
class Weather with _$Weather {
  const factory Weather({
    @JsonKey(name: 'weather') required List<WeatherInfo> info,
    @JsonKey(name: 'main') required WeatherData data,
    required WeatherWind wind,
  }) = Weather$;

  factory Weather.fromJson(Map<dynamic, dynamic> json) => _$WeatherFromJson(Map<String, dynamic>.from(json));
}

@freezed
class WeatherInfo with _$WeatherInfo {
  const factory WeatherInfo({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = WeatherInfo$;

  factory WeatherInfo.fromJson(Map<dynamic, dynamic> json) => _$WeatherInfoFromJson(Map<String, dynamic>.from(json));
}

@freezed
class WeatherData with _$WeatherData {
  const factory WeatherData({
    required double temp,
    @JsonKey(name: 'feels_like') required double feelsLike,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
    required double pressure,
    required double humidity,
  }) = WeatherData$;

  factory WeatherData.fromJson(Map<dynamic, dynamic> json) => _$WeatherDataFromJson(Map<String, dynamic>.from(json));
}

@freezed
class WeatherWind with _$WeatherWind {
  const factory WeatherWind({
    required double speed,
  }) = WeatherWind$;

  factory WeatherWind.fromJson(Map<dynamic, dynamic> json) => _$WeatherWindFromJson(Map<String, dynamic>.from(json));
}
