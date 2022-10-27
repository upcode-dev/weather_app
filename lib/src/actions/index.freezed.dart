// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetCities {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(List<City> cities) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query)? $default, {
    TResult? Function(List<City> cities)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(List<City> cities)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCitiesStart value) $default, {
    required TResult Function(GetCitiesSuccessful value) successful,
    required TResult Function(GetCitiesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCitiesStart value)? $default, {
    TResult? Function(GetCitiesSuccessful value)? successful,
    TResult? Function(GetCitiesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCitiesStart value)? $default, {
    TResult Function(GetCitiesSuccessful value)? successful,
    TResult Function(GetCitiesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCitiesCopyWith<$Res> {
  factory $GetCitiesCopyWith(GetCities value, $Res Function(GetCities) then) =
      _$GetCitiesCopyWithImpl<$Res, GetCities>;
}

/// @nodoc
class _$GetCitiesCopyWithImpl<$Res, $Val extends GetCities>
    implements $GetCitiesCopyWith<$Res> {
  _$GetCitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCitiesStartCopyWith<$Res> {
  factory _$$GetCitiesStartCopyWith(
          _$GetCitiesStart value, $Res Function(_$GetCitiesStart) then) =
      __$$GetCitiesStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$GetCitiesStartCopyWithImpl<$Res>
    extends _$GetCitiesCopyWithImpl<$Res, _$GetCitiesStart>
    implements _$$GetCitiesStartCopyWith<$Res> {
  __$$GetCitiesStartCopyWithImpl(
      _$GetCitiesStart _value, $Res Function(_$GetCitiesStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GetCitiesStart(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCitiesStart implements GetCitiesStart {
  const _$GetCitiesStart(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'GetCities(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiesStart &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCitiesStartCopyWith<_$GetCitiesStart> get copyWith =>
      __$$GetCitiesStartCopyWithImpl<_$GetCitiesStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(List<City> cities) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query)? $default, {
    TResult? Function(List<City> cities)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(List<City> cities)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCitiesStart value) $default, {
    required TResult Function(GetCitiesSuccessful value) successful,
    required TResult Function(GetCitiesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCitiesStart value)? $default, {
    TResult? Function(GetCitiesSuccessful value)? successful,
    TResult? Function(GetCitiesError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCitiesStart value)? $default, {
    TResult Function(GetCitiesSuccessful value)? successful,
    TResult Function(GetCitiesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCitiesStart implements GetCities {
  const factory GetCitiesStart(final String query) = _$GetCitiesStart;

  String get query;
  @JsonKey(ignore: true)
  _$$GetCitiesStartCopyWith<_$GetCitiesStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCitiesSuccessfulCopyWith<$Res> {
  factory _$$GetCitiesSuccessfulCopyWith(_$GetCitiesSuccessful value,
          $Res Function(_$GetCitiesSuccessful) then) =
      __$$GetCitiesSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({List<City> cities});
}

/// @nodoc
class __$$GetCitiesSuccessfulCopyWithImpl<$Res>
    extends _$GetCitiesCopyWithImpl<$Res, _$GetCitiesSuccessful>
    implements _$$GetCitiesSuccessfulCopyWith<$Res> {
  __$$GetCitiesSuccessfulCopyWithImpl(
      _$GetCitiesSuccessful _value, $Res Function(_$GetCitiesSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_$GetCitiesSuccessful(
      null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc

class _$GetCitiesSuccessful implements GetCitiesSuccessful {
  const _$GetCitiesSuccessful(final List<City> cities) : _cities = cities;

  final List<City> _cities;
  @override
  List<City> get cities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'GetCities.successful(cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiesSuccessful &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCitiesSuccessfulCopyWith<_$GetCitiesSuccessful> get copyWith =>
      __$$GetCitiesSuccessfulCopyWithImpl<_$GetCitiesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(List<City> cities) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(cities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query)? $default, {
    TResult? Function(List<City> cities)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(cities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(List<City> cities)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCitiesStart value) $default, {
    required TResult Function(GetCitiesSuccessful value) successful,
    required TResult Function(GetCitiesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCitiesStart value)? $default, {
    TResult? Function(GetCitiesSuccessful value)? successful,
    TResult? Function(GetCitiesError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCitiesStart value)? $default, {
    TResult Function(GetCitiesSuccessful value)? successful,
    TResult Function(GetCitiesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCitiesSuccessful implements GetCities {
  const factory GetCitiesSuccessful(final List<City> cities) =
      _$GetCitiesSuccessful;

  List<City> get cities;
  @JsonKey(ignore: true)
  _$$GetCitiesSuccessfulCopyWith<_$GetCitiesSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCitiesErrorCopyWith<$Res> {
  factory _$$GetCitiesErrorCopyWith(
          _$GetCitiesError value, $Res Function(_$GetCitiesError) then) =
      __$$GetCitiesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetCitiesErrorCopyWithImpl<$Res>
    extends _$GetCitiesCopyWithImpl<$Res, _$GetCitiesError>
    implements _$$GetCitiesErrorCopyWith<$Res> {
  __$$GetCitiesErrorCopyWithImpl(
      _$GetCitiesError _value, $Res Function(_$GetCitiesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetCitiesError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetCitiesError implements GetCitiesError {
  const _$GetCitiesError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetCities.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiesError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCitiesErrorCopyWith<_$GetCitiesError> get copyWith =>
      __$$GetCitiesErrorCopyWithImpl<_$GetCitiesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(List<City> cities) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query)? $default, {
    TResult? Function(List<City> cities)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(List<City> cities)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCitiesStart value) $default, {
    required TResult Function(GetCitiesSuccessful value) successful,
    required TResult Function(GetCitiesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCitiesStart value)? $default, {
    TResult? Function(GetCitiesSuccessful value)? successful,
    TResult? Function(GetCitiesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCitiesStart value)? $default, {
    TResult Function(GetCitiesSuccessful value)? successful,
    TResult Function(GetCitiesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCitiesError implements GetCities, ErrorAction {
  const factory GetCitiesError(
      final Object error, final StackTrace stackTrace) = _$GetCitiesError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetCitiesErrorCopyWith<_$GetCitiesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetWeather {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(City city) $default, {
    required TResult Function(Weather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(City city)? $default, {
    TResult? Function(Weather weather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(City city)? $default, {
    TResult Function(Weather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetWeatherStart value)? $default, {
    TResult? Function(GetWeatherSuccessful value)? successful,
    TResult? Function(GetWeatherError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherCopyWith<$Res> {
  factory $GetWeatherCopyWith(
          GetWeather value, $Res Function(GetWeather) then) =
      _$GetWeatherCopyWithImpl<$Res, GetWeather>;
}

/// @nodoc
class _$GetWeatherCopyWithImpl<$Res, $Val extends GetWeather>
    implements $GetWeatherCopyWith<$Res> {
  _$GetWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWeatherStartCopyWith<$Res> {
  factory _$$GetWeatherStartCopyWith(
          _$GetWeatherStart value, $Res Function(_$GetWeatherStart) then) =
      __$$GetWeatherStartCopyWithImpl<$Res>;
  @useResult
  $Res call({City city});

  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$$GetWeatherStartCopyWithImpl<$Res>
    extends _$GetWeatherCopyWithImpl<$Res, _$GetWeatherStart>
    implements _$$GetWeatherStartCopyWith<$Res> {
  __$$GetWeatherStartCopyWithImpl(
      _$GetWeatherStart _value, $Res Function(_$GetWeatherStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$GetWeatherStart(
      null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc

class _$GetWeatherStart implements GetWeatherStart {
  const _$GetWeatherStart(this.city);

  @override
  final City city;

  @override
  String toString() {
    return 'GetWeather(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherStart &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherStartCopyWith<_$GetWeatherStart> get copyWith =>
      __$$GetWeatherStartCopyWithImpl<_$GetWeatherStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(City city) $default, {
    required TResult Function(Weather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(City city)? $default, {
    TResult? Function(Weather weather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(City city)? $default, {
    TResult Function(Weather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetWeatherStart value)? $default, {
    TResult? Function(GetWeatherSuccessful value)? successful,
    TResult? Function(GetWeatherError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetWeatherStart implements GetWeather {
  const factory GetWeatherStart(final City city) = _$GetWeatherStart;

  City get city;
  @JsonKey(ignore: true)
  _$$GetWeatherStartCopyWith<_$GetWeatherStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWeatherSuccessfulCopyWith<$Res> {
  factory _$$GetWeatherSuccessfulCopyWith(_$GetWeatherSuccessful value,
          $Res Function(_$GetWeatherSuccessful) then) =
      __$$GetWeatherSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$GetWeatherSuccessfulCopyWithImpl<$Res>
    extends _$GetWeatherCopyWithImpl<$Res, _$GetWeatherSuccessful>
    implements _$$GetWeatherSuccessfulCopyWith<$Res> {
  __$$GetWeatherSuccessfulCopyWithImpl(_$GetWeatherSuccessful _value,
      $Res Function(_$GetWeatherSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$GetWeatherSuccessful(
      null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

class _$GetWeatherSuccessful implements GetWeatherSuccessful {
  const _$GetWeatherSuccessful(this.weather);

  @override
  final Weather weather;

  @override
  String toString() {
    return 'GetWeather.successful(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherSuccessful &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherSuccessfulCopyWith<_$GetWeatherSuccessful> get copyWith =>
      __$$GetWeatherSuccessfulCopyWithImpl<_$GetWeatherSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(City city) $default, {
    required TResult Function(Weather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(City city)? $default, {
    TResult? Function(Weather weather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(City city)? $default, {
    TResult Function(Weather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetWeatherStart value)? $default, {
    TResult? Function(GetWeatherSuccessful value)? successful,
    TResult? Function(GetWeatherError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccessful implements GetWeather {
  const factory GetWeatherSuccessful(final Weather weather) =
      _$GetWeatherSuccessful;

  Weather get weather;
  @JsonKey(ignore: true)
  _$$GetWeatherSuccessfulCopyWith<_$GetWeatherSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWeatherErrorCopyWith<$Res> {
  factory _$$GetWeatherErrorCopyWith(
          _$GetWeatherError value, $Res Function(_$GetWeatherError) then) =
      __$$GetWeatherErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetWeatherErrorCopyWithImpl<$Res>
    extends _$GetWeatherCopyWithImpl<$Res, _$GetWeatherError>
    implements _$$GetWeatherErrorCopyWith<$Res> {
  __$$GetWeatherErrorCopyWithImpl(
      _$GetWeatherError _value, $Res Function(_$GetWeatherError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetWeatherError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetWeatherError implements GetWeatherError {
  const _$GetWeatherError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetWeather.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherErrorCopyWith<_$GetWeatherError> get copyWith =>
      __$$GetWeatherErrorCopyWithImpl<_$GetWeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(City city) $default, {
    required TResult Function(Weather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(City city)? $default, {
    TResult? Function(Weather weather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(City city)? $default, {
    TResult Function(Weather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetWeatherStart value)? $default, {
    TResult? Function(GetWeatherSuccessful value)? successful,
    TResult? Function(GetWeatherError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherError implements GetWeather, ErrorAction {
  const factory GetWeatherError(
      final Object error, final StackTrace stackTrace) = _$GetWeatherError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetWeatherErrorCopyWith<_$GetWeatherError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetIsMetric {
  bool get isMetric => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetIsMetricCopyWith<SetIsMetric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetIsMetricCopyWith<$Res> {
  factory $SetIsMetricCopyWith(
          SetIsMetric value, $Res Function(SetIsMetric) then) =
      _$SetIsMetricCopyWithImpl<$Res, SetIsMetric>;
  @useResult
  $Res call({bool isMetric});
}

/// @nodoc
class _$SetIsMetricCopyWithImpl<$Res, $Val extends SetIsMetric>
    implements $SetIsMetricCopyWith<$Res> {
  _$SetIsMetricCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMetric = null,
  }) {
    return _then(_value.copyWith(
      isMetric: null == isMetric
          ? _value.isMetric
          : isMetric // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetIsMetric$CopyWith<$Res>
    implements $SetIsMetricCopyWith<$Res> {
  factory _$$SetIsMetric$CopyWith(
          _$SetIsMetric$ value, $Res Function(_$SetIsMetric$) then) =
      __$$SetIsMetric$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMetric});
}

/// @nodoc
class __$$SetIsMetric$CopyWithImpl<$Res>
    extends _$SetIsMetricCopyWithImpl<$Res, _$SetIsMetric$>
    implements _$$SetIsMetric$CopyWith<$Res> {
  __$$SetIsMetric$CopyWithImpl(
      _$SetIsMetric$ _value, $Res Function(_$SetIsMetric$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMetric = null,
  }) {
    return _then(_$SetIsMetric$(
      isMetric: null == isMetric
          ? _value.isMetric
          : isMetric // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetIsMetric$ implements SetIsMetric$ {
  const _$SetIsMetric$({required this.isMetric});

  @override
  final bool isMetric;

  @override
  String toString() {
    return 'SetIsMetric(isMetric: $isMetric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIsMetric$ &&
            (identical(other.isMetric, isMetric) ||
                other.isMetric == isMetric));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMetric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIsMetric$CopyWith<_$SetIsMetric$> get copyWith =>
      __$$SetIsMetric$CopyWithImpl<_$SetIsMetric$>(this, _$identity);
}

abstract class SetIsMetric$ implements SetIsMetric {
  const factory SetIsMetric$({required final bool isMetric}) = _$SetIsMetric$;

  @override
  bool get isMetric;
  @override
  @JsonKey(ignore: true)
  _$$SetIsMetric$CopyWith<_$SetIsMetric$> get copyWith =>
      throw _privateConstructorUsedError;
}
