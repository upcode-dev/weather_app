part of models;

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<City>[]) List<City> cities,
    Weather? weather,
    @Default(false) bool isLoading,
    @Default(false) bool canShowResult,
    @Default(true) bool initialSearch,
    @Default(true) bool isMetric,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
