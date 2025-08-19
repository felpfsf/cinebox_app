import 'package:cinebox_app/presentation/pages/splash/commands/check_user_logged_command.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_screen_viewmodel.g.dart';

class SplashScreenViewmodel {
  SplashScreenViewmodel({required CheckUserLoggedCommand checkUserLoggedCommand})
    : _checkUserLoggedCommand = checkUserLoggedCommand;

  final CheckUserLoggedCommand _checkUserLoggedCommand;

  void checkLoginAndRedirect() {
    _checkUserLoggedCommand.execute();
  }
}

@riverpod
SplashScreenViewmodel splashScreenViewmodel(Ref ref) {
  return SplashScreenViewmodel(
    checkUserLoggedCommand: ref.read(checkUserLoggedCommandProvider.notifier),
  );
}
