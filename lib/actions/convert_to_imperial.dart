import 'package:weather_app2/actions/index.dart';

class ConvertToImperial implements AppAction {
  ConvertToImperial();
}

class ConvertToImperialSuccessful implements AppAction {
  ConvertToImperialSuccessful(this.list);

  List<int> list;
}

class ConvertToImperialError implements ErrorAction {
  ConvertToImperialError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'ConvertToImperialError{error: $error}';
  }
}
