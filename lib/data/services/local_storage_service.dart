import 'package:cinebox_app/core/result/result.dart';

abstract interface class LocalStorageService {
  Future<Result<Unit>> saveIdToken(String token);
  Future<Result<String>> getIdToken();
  Future<Result<Unit>> deleteIdToken();
}
