abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;
}

typedef ActionResult = void Function(AppAction action);
