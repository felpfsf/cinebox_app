import 'package:cinebox_app/core/result/result.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import './local_storage_service.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  LocalStorageServiceImpl({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  final FlutterSecureStorage _storage;

  @override
  Future<Result<Unit>> saveIdToken(String token) async {
    await _storage.write(key: 'id_token', value: token);

    return successOfUnit();
  }

  @override
  Future<Result<String>> getIdToken() async {
    final token = await _storage.read(key: 'id_token');

    if (token == null) {
      return Failure(Exception('Token not found'));
    }

    return Success(token);
  }

  @override
  Future<Result<Unit>> deleteIdToken() async {
    await _storage.delete(key: 'id_token');

    return successOfUnit();
  }
}
