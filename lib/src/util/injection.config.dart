// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/service_api.dart' as _i3;
import '../data/weather_api.dart' as _i5;
import '../epics/app_epic.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ApiService>(() => _i3.ApiService(get<_i4.Dio>()));
  gh.singleton<_i5.WeatherApi>(_i5.WeatherApi(
    get<_i3.ApiService>(),
    get<String>(instanceName: 'apiKey'),
  ));
  gh.singleton<_i6.AppEpic>(_i6.AppEpic(get<_i5.WeatherApi>()));
  return get;
}
