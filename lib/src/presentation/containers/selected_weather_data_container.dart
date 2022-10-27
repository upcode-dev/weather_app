part of containers;

class SelectedWeatherDataContainer extends StatelessWidget {
  const SelectedWeatherDataContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<SelectedWeatherDataViewModel> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SelectedWeatherDataViewModel>(
      converter: (Store<AppState> store) {
        if (store.state.isMetric) {
          return SelectedWeatherDataViewModel(
            temp: '${store.state.weather!.data.temp}\u00B0',
            feelsLike: '${store.state.weather!.data.feelsLike}\u00B0',
            tempMin: '${store.state.weather!.data.tempMin}\u00B0',
            tempMax: '${store.state.weather!.data.tempMax}\u00B0',
            humidity: store.state.weather!.data.humidity,
            windSpeed: store.state.weather!.wind.speed,
            description: store.state.weather!.info.first.description,
            icon: store.state.weather!.info.first.icon,
            isMetric: store.state.isMetric,
          );
        } else {
          return SelectedWeatherDataViewModel(
            temp: '${(store.state.weather!.data.temp * 9 / 5 + 32).round()}\u2109',
            feelsLike: '${(store.state.weather!.data.feelsLike * 9 / 5 + 32).round()}\u2109',
            tempMin: '${(store.state.weather!.data.tempMin * 9 / 5 + 32).round()}\u2109',
            tempMax: '${(store.state.weather!.data.tempMax * 9 / 5 + 32).round()}\u2109',
            humidity: store.state.weather!.data.humidity,
            windSpeed: store.state.weather!.wind.speed,
            description: store.state.weather!.info.first.description,
            icon: store.state.weather!.info.first.icon,
            isMetric: store.state.isMetric,
          );
        }
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
