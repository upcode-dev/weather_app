part of containers;

class SelectedWeatherDataContainer extends StatelessWidget {
  const SelectedWeatherDataContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<SelectedWeatherDataViewModel> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SelectedWeatherDataViewModel>(
      converter: (Store<AppState> store) {
        final Weather? weather = store.state.weather;

        String temp;
        String feelsLike;
        String tempMin;
        String tempMax;

        if (store.state.isMetric) {
          temp = '${weather!.data.temp.round()}\u00B0';
          feelsLike = '${weather.data.feelsLike.round()}\u00B0';
          tempMin = '${weather.data.tempMin.round()}\u00B0';
          tempMax = '${weather.data.tempMax.round()}\u00B0';
        } else {
          temp = '${(weather!.data.temp * 9 / 5 + 32).round()}\u2109';
          feelsLike = '${(weather.data.feelsLike * 9 / 5 + 32).round()}\u2109';
          tempMin = '${(weather.data.tempMin * 9 / 5 + 32).round()}\u2109';
          tempMax = '${(weather.data.tempMax * 9 / 5 + 32).round()}\u2109';
        }

        return SelectedWeatherDataViewModel(
          temp: temp,
          feelsLike: feelsLike,
          tempMin: tempMin,
          tempMax: tempMax,
          humidity: weather.data.humidity,
          windSpeed: weather.wind.speed,
          description: weather.info.first.description,
          icon: weather.info.first.icon,
          isMetric: store.state.isMetric,
        );
      },
      builder: builder,
    );
  }
}

@freezed
class SelectedWeatherDataViewModel with _$SelectedWeatherDataViewModel {
  const factory SelectedWeatherDataViewModel({
    required String temp,
    required String feelsLike,
    required String tempMin,
    required String tempMax,
    required String description,
    required String icon,
    required bool isMetric,
    required double humidity,
    required double windSpeed,
  }) = SelectedWeatherDataViewModel$;
}
