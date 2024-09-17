import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/index.dart';

extension BuildContextExtension on BuildContext {
  Store<AppState> get store => get<Store<AppState>>();

  void dispatch(AppAction action) => store.dispatch(action);

  AppState get state => store.state;

  T get<T extends Object>({String? instanceName, dynamic param1, dynamic param2}) {
    return read<GetIt>().get<T>(instanceName: instanceName, param1: param1, param2: param2);
  }
}
