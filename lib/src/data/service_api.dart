import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/src/models/index.dart';

part 'service_api.g.dart';

@injectable
@RestApi(baseUrl: 'https://api.openweathermap.org')
abstract class ApiService {
  @factoryMethod
  factory ApiService(Dio dio) = _ApiService;

  @GET('/geo/1.0/direct')
  Future<List<City>> getCities(@Query('q') String query, @Query('appid') String appId);

  @GET('/data/2.5/weather')
  Future<Weather> getWeather({
    @Query('lat') required double lat,
    @Query('lon') required double lon,
    @Query('appid') required String appId,
    @Query('units') String units = 'metric',
  });
}
