// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      cities: (json['cities'] as List<dynamic>?)
              ?.map((e) => City.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <City>[],
      weather: json['weather'] == null
          ? null
          : Weather.fromJson(json['weather'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      canShowResult: json['canShowResult'] as bool? ?? false,
      initialSearch: json['initialSearch'] as bool? ?? true,
      isMetric: json['isMetric'] as bool? ?? true,
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) =>
    <String, dynamic>{
      'cities': instance.cities,
      'weather': instance.weather,
      'isLoading': instance.isLoading,
      'canShowResult': instance.canShowResult,
      'initialSearch': instance.initialSearch,
      'isMetric': instance.isMetric,
    };

_$City$ _$$City$FromJson(Map<String, dynamic> json) => _$City$(
      name: json['name'] as String,
      country: json['country'] as String,
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$$City$ToJson(_$City$ instance) => <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'lon': instance.lon,
      'lat': instance.lat,
    };

_$Weather$ _$$Weather$FromJson(Map<String, dynamic> json) => _$Weather$(
      info: (json['weather'] as List<dynamic>)
          .map((e) => WeatherInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: WeatherData.fromJson(json['main'] as Map<String, dynamic>),
      wind: WeatherWind.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Weather$ToJson(_$Weather$ instance) =>
    <String, dynamic>{
      'weather': instance.info,
      'main': instance.data,
      'wind': instance.wind,
    };

_$WeatherInfo$ _$$WeatherInfo$FromJson(Map<String, dynamic> json) =>
    _$WeatherInfo$(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherInfo$ToJson(_$WeatherInfo$ instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$WeatherData$ _$$WeatherData$FromJson(Map<String, dynamic> json) =>
    _$WeatherData$(
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      pressure: (json['pressure'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
    );

Map<String, dynamic> _$$WeatherData$ToJson(_$WeatherData$ instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

_$WeatherWind$ _$$WeatherWind$FromJson(Map<String, dynamic> json) =>
    _$WeatherWind$(
      speed: (json['speed'] as num).toDouble(),
    );

Map<String, dynamic> _$$WeatherWind$ToJson(_$WeatherWind$ instance) =>
    <String, dynamic>{
      'speed': instance.speed,
    };
