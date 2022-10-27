part of actions;

@freezed
class GetCities with _$GetCities implements AppAction {
  const factory GetCities(String query) = GetCitiesStart;

  const factory GetCities.successful(List<City> cities) = GetCitiesSuccessful;

  @Implements<ErrorAction>()
  const factory GetCities.error(Object error, StackTrace stackTrace) = GetCitiesError;
}
