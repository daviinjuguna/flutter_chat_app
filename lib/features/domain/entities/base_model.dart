import 'package:flutterchatapp/core/errors/ServerFailure.dart';

class BaseModel<T> {
  ServerError _error;
  T data;

  setException(ServerError error) {
    _error = error;
  }

  setData(T data) {
    this.data = data;
  }

  get getException {
    return _error;
  }
}