library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/src/models/index.dart';

part 'get_cities.dart';
part 'get_weather.dart';
part 'set.dart';
part 'index.freezed.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;
}

typedef ActionResult = void Function(AppAction action);
