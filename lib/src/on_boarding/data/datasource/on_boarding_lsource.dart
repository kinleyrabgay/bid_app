import 'package:bidding/core/errors/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class OnBoardingLocalDatasource {
  const OnBoardingLocalDatasource();

  // Actual data will never have either failure or success : only one
  Future<void> cacheFirstTimer();
  Future<bool> checkIfUserIsFirstTimer();
}

// Universal key that checks the firstTimer
const kFirstTimerKey = 'first_timer';

class OnboardingLocalDatasourceImplementation
    extends OnBoardingLocalDatasource {
  const OnboardingLocalDatasourceImplementation(this._prefs);

  final SharedPreferences _prefs;

  @override
  Future<void> cacheFirstTimer() async {
    try {
      await _prefs.setBool(kFirstTimerKey, false);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<bool> checkIfUserIsFirstTimer() async {
    try {
      return _prefs.getBool(kFirstTimerKey) ?? true;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
