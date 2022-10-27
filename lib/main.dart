import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/init/init.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/presentation/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.deferFirstFrame();

  final GetIt getIt = await init();
  runApp(WeatherApp(getIt: getIt));

  WidgetsBinding.instance.allowFirstFrame();
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key, required this.getIt}) : super(key: key);

  final GetIt getIt;

  @override
  Widget build(BuildContext context) {
    return Provider<GetIt>(
      create: (BuildContext context) => getIt,
      child: StoreProvider<AppState>(
        store: getIt.get<Store<AppState>>(),
        child: const MaterialApp(
          home: HomePage(),
        ),
      ),
    );
  }
}
