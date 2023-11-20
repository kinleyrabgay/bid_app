import 'package:bidding/core/usecases/usecases.dart';
import 'package:bidding/core/utils/typedefs.dart';
import 'package:bidding/src/on_boarding/domain/repos/on_boarding_repo.dart';

class CacheFirstTimer extends UsecaseWithoutParams<void> {
  const CacheFirstTimer(this._repo);

  final OnBoardingRepo _repo;

  @override
  ResultFuture call() async => _repo.cacheFirstTimer();
}
