part of actions;

@freezed
class GetWeather with _$GetWeather implements AppAction {
  const factory GetWeather(City city) = GetWeatherStart;

  const factory GetWeather.successful(Weather weather) = GetWeatherSuccessful;

  @Implements<ErrorAction>()
  const factory GetWeather.error(Object error, StackTrace stackTrace) = GetWeatherError;
}
