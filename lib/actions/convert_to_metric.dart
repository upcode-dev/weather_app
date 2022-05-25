import 'package:weather_app2/actions/index.dart';

class ConvertToMetric implements AppAction {
  ConvertToMetric();
}

class ConvertToMetricSuccessful implements AppAction {
  ConvertToMetricSuccessful(this.list);

  List<int> list;
}

class ConvertToMetricError implements ErrorAction {
  ConvertToMetricError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'ConvertToMetricError{error: $error}';
  }
}
