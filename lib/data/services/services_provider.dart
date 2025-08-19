import 'package:cinebox_app/data/services/local_storage_service.dart';
import 'package:cinebox_app/data/services/local_storage_service_impl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services_provider.g.dart';

@Riverpod(keepAlive: true)
LocalStorageService localStorageService(Ref ref) {
  return LocalStorageServiceImpl(storage: const FlutterSecureStorage());
}
