
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/src/util/injection.config.dart';

@InjectableInit()
void configureDependencies(GetIt getIt) => $initGetIt(getIt);
