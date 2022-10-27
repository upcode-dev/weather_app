import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/epics/app_epic.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/reducer/reducer.dart';
import 'package:weather_app/src/util/injection.dart';

Future<GetIt> init() async {
  final GetIt getIt = GetIt.instance
    ..registerSingleton(Dio())
    ..registerSingleton('efc2113600604544cf7407bcd6ff4d8e', instanceName: 'apiKey');
  configureDependencies(getIt);

  getIt.get<WeatherApi>();

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(getIt.get<AppEpic>()),
    ],
  );

  return getIt..registerSingleton(store);
}
