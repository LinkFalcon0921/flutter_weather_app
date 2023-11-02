abstract class Response<S> {
  final bool isError;

  String getMessage();

  S getResult();

  Response({ required this.isError });
}

class ResultResponse<S> extends Response<S> {
  final S _result;

  ResultResponse(this._result) : super(isError: false);

  @override
  String getMessage() {
    throw UnimplementedError();
  }

  @override
  S getResult() {
    return this._result;
  }

}

class ErrorResponse<S> extends Response<S> {
  final String message;

  ErrorResponse(this.message) : super(isError: true);

  @override
  String getMessage() {
    return this.message;
  }

  @override
  S getResult() {
    throw UnimplementedError();
  }
}
