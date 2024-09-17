// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  List<City> get cities => throw _privateConstructorUsedError;
  Weather? get weather => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get canShowResult => throw _privateConstructorUsedError;
  bool get initialSearch => throw _privateConstructorUsedError;
  bool get isMetric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {List<City> cities,
      Weather? weather,
      bool isLoading,
      bool canShowResult,
      bool initialSearch,
      bool isMetric});

  $WeatherCopyWith<$Res>? get weather;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
    Object? weather = freezed,
    Object? isLoading = null,
    Object? canShowResult = null,
    Object? initialSearch = null,
    Object? isMetric = null,
  }) {
    return _then(_value.copyWith(
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      canShowResult: null == canShowResult
          ? _value.canShowResult
          : canShowResult // ignore: cast_nullable_to_non_nullable
              as bool,
      initialSearch: null == initialSearch
          ? _value.initialSearch
          : initialSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      isMetric: null == isMetric
          ? _value.isMetric
          : isMetric // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(
          _$AppState$ value, $Res Function(_$AppState$) then) =
      __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<City> cities,
      Weather? weather,
      bool isLoading,
      bool canShowResult,
      bool initialSearch,
      bool isMetric});

  @override
  $WeatherCopyWith<$Res>? get weather;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(
      _$AppState$ _value, $Res Function(_$AppState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
    Object? weather = freezed,
    Object? isLoading = null,
    Object? canShowResult = null,
    Object? initialSearch = null,
    Object? isMetric = null,
  }) {
    return _then(_$AppState$(
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      canShowResult: null == canShowResult
          ? _value.canShowResult
          : canShowResult // ignore: cast_nullable_to_non_nullable
              as bool,
      initialSearch: null == initialSearch
          ? _value.initialSearch
          : initialSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      isMetric: null == isMetric
          ? _value.isMetric
          : isMetric // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {final List<City> cities = const <City>[],
      this.weather,
      this.isLoading = false,
      this.canShowResult = false,
      this.initialSearch = true,
      this.isMetric = true})
      : _cities = cities;

  factory _$AppState$.fromJson(Map<String, dynamic> json) =>
      _$$AppState$FromJson(json);

  final List<City> _cities;
  @override
  @JsonKey()
  List<City> get cities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  final Weather? weather;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool canShowResult;
  @override
  @JsonKey()
  final bool initialSearch;
  @override
  @JsonKey()
  final bool isMetric;

  @override
  String toString() {
    return 'AppState(cities: $cities, weather: $weather, isLoading: $isLoading, canShowResult: $canShowResult, initialSearch: $initialSearch, isMetric: $isMetric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.canShowResult, canShowResult) ||
                other.canShowResult == canShowResult) &&
            (identical(other.initialSearch, initialSearch) ||
                other.initialSearch == initialSearch) &&
            (identical(other.isMetric, isMetric) ||
                other.isMetric == isMetric));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cities),
      weather,
      isLoading,
      canShowResult,
      initialSearch,
      isMetric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final List<City> cities,
      final Weather? weather,
      final bool isLoading,
      final bool canShowResult,
      final bool initialSearch,
      final bool isMetric}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  List<City> get cities;
  @override
  Weather? get weather;
  @override
  bool get isLoading;
  @override
  bool get canShowResult;
  @override
  bool get initialSearch;
  @override
  bool get isMetric;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return City$.fromJson(json);
}

/// @nodoc
mixin _$City {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call({String name, String country, double lon, double lat});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$City$CopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$City$CopyWith(_$City$ value, $Res Function(_$City$) then) =
      __$$City$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String country, double lon, double lat});
}

/// @nodoc
class __$$City$CopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res, _$City$>
    implements _$$City$CopyWith<$Res> {
  __$$City$CopyWithImpl(_$City$ _value, $Res Function(_$City$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_$City$(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$City$ implements City$ {
  const _$City$(
      {required this.name,
      required this.country,
      required this.lon,
      required this.lat});

  factory _$City$.fromJson(Map<String, dynamic> json) => _$$City$FromJson(json);

  @override
  final String name;
  @override
  final String country;
  @override
  final double lon;
  @override
  final double lat;

  @override
  String toString() {
    return 'City(name: $name, country: $country, lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$City$ &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, country, lon, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$City$CopyWith<_$City$> get copyWith =>
      __$$City$CopyWithImpl<_$City$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$City$ToJson(
      this,
    );
  }
}

abstract class City$ implements City {
  const factory City$(
      {required final String name,
      required final String country,
      required final double lon,
      required final double lat}) = _$City$;

  factory City$.fromJson(Map<String, dynamic> json) = _$City$.fromJson;

  @override
  String get name;
  @override
  String get country;
  @override
  double get lon;
  @override
  double get lat;
  @override
  @JsonKey(ignore: true)
  _$$City$CopyWith<_$City$> get copyWith => throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather$.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  @JsonKey(name: 'weather')
  List<WeatherInfo> get info => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  WeatherData get data => throw _privateConstructorUsedError;
  WeatherWind get wind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {@JsonKey(name: 'weather') List<WeatherInfo> info,
      @JsonKey(name: 'main') WeatherData data,
      WeatherWind wind});

  $WeatherDataCopyWith<$Res> get data;
  $WeatherWindCopyWith<$Res> get wind;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? data = null,
    Object? wind = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherData,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WeatherWind,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDataCopyWith<$Res> get data {
    return $WeatherDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherWindCopyWith<$Res> get wind {
    return $WeatherWindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Weather$CopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$Weather$CopyWith(
          _$Weather$ value, $Res Function(_$Weather$) then) =
      __$$Weather$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'weather') List<WeatherInfo> info,
      @JsonKey(name: 'main') WeatherData data,
      WeatherWind wind});

  @override
  $WeatherDataCopyWith<$Res> get data;
  @override
  $WeatherWindCopyWith<$Res> get wind;
}

/// @nodoc
class __$$Weather$CopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$Weather$>
    implements _$$Weather$CopyWith<$Res> {
  __$$Weather$CopyWithImpl(_$Weather$ _value, $Res Function(_$Weather$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? data = null,
    Object? wind = null,
  }) {
    return _then(_$Weather$(
      info: null == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherData,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WeatherWind,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Weather$ implements Weather$ {
  const _$Weather$(
      {@JsonKey(name: 'weather') required final List<WeatherInfo> info,
      @JsonKey(name: 'main') required this.data,
      required this.wind})
      : _info = info;

  factory _$Weather$.fromJson(Map<String, dynamic> json) =>
      _$$Weather$FromJson(json);

  final List<WeatherInfo> _info;
  @override
  @JsonKey(name: 'weather')
  List<WeatherInfo> get info {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_info);
  }

  @override
  @JsonKey(name: 'main')
  final WeatherData data;
  @override
  final WeatherWind wind;

  @override
  String toString() {
    return 'Weather(info: $info, data: $data, wind: $wind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Weather$ &&
            const DeepCollectionEquality().equals(other._info, _info) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.wind, wind) || other.wind == wind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_info), data, wind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Weather$CopyWith<_$Weather$> get copyWith =>
      __$$Weather$CopyWithImpl<_$Weather$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Weather$ToJson(
      this,
    );
  }
}

abstract class Weather$ implements Weather {
  const factory Weather$(
      {@JsonKey(name: 'weather') required final List<WeatherInfo> info,
      @JsonKey(name: 'main') required final WeatherData data,
      required final WeatherWind wind}) = _$Weather$;

  factory Weather$.fromJson(Map<String, dynamic> json) = _$Weather$.fromJson;

  @override
  @JsonKey(name: 'weather')
  List<WeatherInfo> get info;
  @override
  @JsonKey(name: 'main')
  WeatherData get data;
  @override
  WeatherWind get wind;
  @override
  @JsonKey(ignore: true)
  _$$Weather$CopyWith<_$Weather$> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherInfo _$WeatherInfoFromJson(Map<String, dynamic> json) {
  return WeatherInfo$.fromJson(json);
}

/// @nodoc
mixin _$WeatherInfo {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherInfoCopyWith<WeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoCopyWith<$Res> {
  factory $WeatherInfoCopyWith(
          WeatherInfo value, $Res Function(WeatherInfo) then) =
      _$WeatherInfoCopyWithImpl<$Res, WeatherInfo>;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherInfoCopyWithImpl<$Res, $Val extends WeatherInfo>
    implements $WeatherInfoCopyWith<$Res> {
  _$WeatherInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherInfo$CopyWith<$Res>
    implements $WeatherInfoCopyWith<$Res> {
  factory _$$WeatherInfo$CopyWith(
          _$WeatherInfo$ value, $Res Function(_$WeatherInfo$) then) =
      __$$WeatherInfo$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$$WeatherInfo$CopyWithImpl<$Res>
    extends _$WeatherInfoCopyWithImpl<$Res, _$WeatherInfo$>
    implements _$$WeatherInfo$CopyWith<$Res> {
  __$$WeatherInfo$CopyWithImpl(
      _$WeatherInfo$ _value, $Res Function(_$WeatherInfo$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherInfo$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherInfo$ implements WeatherInfo$ {
  const _$WeatherInfo$(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory _$WeatherInfo$.fromJson(Map<String, dynamic> json) =>
      _$$WeatherInfo$FromJson(json);

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherInfo(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherInfo$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherInfo$CopyWith<_$WeatherInfo$> get copyWith =>
      __$$WeatherInfo$CopyWithImpl<_$WeatherInfo$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherInfo$ToJson(
      this,
    );
  }
}

abstract class WeatherInfo$ implements WeatherInfo {
  const factory WeatherInfo$(
      {required final int id,
      required final String main,
      required final String description,
      required final String icon}) = _$WeatherInfo$;

  factory WeatherInfo$.fromJson(Map<String, dynamic> json) =
      _$WeatherInfo$.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherInfo$CopyWith<_$WeatherInfo$> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return WeatherData$.fromJson(json);
}

/// @nodoc
mixin _$WeatherData {
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;
  double get pressure => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res, WeatherData>;
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax,
      double pressure,
      double humidity});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res, $Val extends WeatherData>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherData$CopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$$WeatherData$CopyWith(
          _$WeatherData$ value, $Res Function(_$WeatherData$) then) =
      __$$WeatherData$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax,
      double pressure,
      double humidity});
}

/// @nodoc
class __$$WeatherData$CopyWithImpl<$Res>
    extends _$WeatherDataCopyWithImpl<$Res, _$WeatherData$>
    implements _$$WeatherData$CopyWith<$Res> {
  __$$WeatherData$CopyWithImpl(
      _$WeatherData$ _value, $Res Function(_$WeatherData$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_$WeatherData$(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherData$ implements WeatherData$ {
  const _$WeatherData$(
      {required this.temp,
      @JsonKey(name: 'feels_like') required this.feelsLike,
      @JsonKey(name: 'temp_min') required this.tempMin,
      @JsonKey(name: 'temp_max') required this.tempMax,
      required this.pressure,
      required this.humidity});

  factory _$WeatherData$.fromJson(Map<String, dynamic> json) =>
      _$$WeatherData$FromJson(json);

  @override
  final double temp;
  @override
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;
  @override
  final double pressure;
  @override
  final double humidity;

  @override
  String toString() {
    return 'WeatherData(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherData$ &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, temp, feelsLike, tempMin, tempMax, pressure, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherData$CopyWith<_$WeatherData$> get copyWith =>
      __$$WeatherData$CopyWithImpl<_$WeatherData$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherData$ToJson(
      this,
    );
  }
}

abstract class WeatherData$ implements WeatherData {
  const factory WeatherData$(
      {required final double temp,
      @JsonKey(name: 'feels_like') required final double feelsLike,
      @JsonKey(name: 'temp_min') required final double tempMin,
      @JsonKey(name: 'temp_max') required final double tempMax,
      required final double pressure,
      required final double humidity}) = _$WeatherData$;

  factory WeatherData$.fromJson(Map<String, dynamic> json) =
      _$WeatherData$.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(name: 'feels_like')
  double get feelsLike;
  @override
  @JsonKey(name: 'temp_min')
  double get tempMin;
  @override
  @JsonKey(name: 'temp_max')
  double get tempMax;
  @override
  double get pressure;
  @override
  double get humidity;
  @override
  @JsonKey(ignore: true)
  _$$WeatherData$CopyWith<_$WeatherData$> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherWind _$WeatherWindFromJson(Map<String, dynamic> json) {
  return WeatherWind$.fromJson(json);
}

/// @nodoc
mixin _$WeatherWind {
  double get speed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherWindCopyWith<WeatherWind> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherWindCopyWith<$Res> {
  factory $WeatherWindCopyWith(
          WeatherWind value, $Res Function(WeatherWind) then) =
      _$WeatherWindCopyWithImpl<$Res, WeatherWind>;
  @useResult
  $Res call({double speed});
}

/// @nodoc
class _$WeatherWindCopyWithImpl<$Res, $Val extends WeatherWind>
    implements $WeatherWindCopyWith<$Res> {
  _$WeatherWindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherWind$CopyWith<$Res>
    implements $WeatherWindCopyWith<$Res> {
  factory _$$WeatherWind$CopyWith(
          _$WeatherWind$ value, $Res Function(_$WeatherWind$) then) =
      __$$WeatherWind$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed});
}

/// @nodoc
class __$$WeatherWind$CopyWithImpl<$Res>
    extends _$WeatherWindCopyWithImpl<$Res, _$WeatherWind$>
    implements _$$WeatherWind$CopyWith<$Res> {
  __$$WeatherWind$CopyWithImpl(
      _$WeatherWind$ _value, $Res Function(_$WeatherWind$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_$WeatherWind$(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherWind$ implements WeatherWind$ {
  const _$WeatherWind$({required this.speed});

  factory _$WeatherWind$.fromJson(Map<String, dynamic> json) =>
      _$$WeatherWind$FromJson(json);

  @override
  final double speed;

  @override
  String toString() {
    return 'WeatherWind(speed: $speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherWind$ &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherWind$CopyWith<_$WeatherWind$> get copyWith =>
      __$$WeatherWind$CopyWithImpl<_$WeatherWind$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherWind$ToJson(
      this,
    );
  }
}

abstract class WeatherWind$ implements WeatherWind {
  const factory WeatherWind$({required final double speed}) = _$WeatherWind$;

  factory WeatherWind$.fromJson(Map<String, dynamic> json) =
      _$WeatherWind$.fromJson;

  @override
  double get speed;
  @override
  @JsonKey(ignore: true)
  _$$WeatherWind$CopyWith<_$WeatherWind$> get copyWith =>
      throw _privateConstructorUsedError;
}
