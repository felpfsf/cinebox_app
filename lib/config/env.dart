import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(
    varName: 'GOOGLE_API_KEY',
    obfuscate: true,
  )
  static final String googleApiKey = _Env.googleApiKey;

  @EnviedField(varName: 'BACKEND_BASE_URL')
  static const String backendBaseUrl = _Env.backendBaseUrl;

  @EnviedField(
    varName: 'TMDB_API_KEY',
    obfuscate: true,
  )
  static final String tmdbApiKey = _Env.tmdbApiKey;
}
