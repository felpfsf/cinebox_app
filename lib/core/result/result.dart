sealed class Result<T> {}

class Unit {} // void

class Success<T> extends Result<T> {
  Success(this.data);
  final T data;
}

class Failure<T> extends Result<T> {
  Failure(this.error, [this.stackTrace]);

  final Exception error;
  final Object? stackTrace;
}

Result<Unit> successOfUnit() => Success(Unit());
