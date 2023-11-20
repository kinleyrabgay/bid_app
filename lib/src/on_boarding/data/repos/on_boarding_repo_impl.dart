import 'package:dartz/dartz.dart';
import 'package:bidding/core/errors/exceptions.dart';
import 'package:bidding/core/errors/failures.dart';
import 'package:bidding/core/utils/typedefs.dart';
import 'package:bidding/src/on_boarding/data/datasource/on_boarding_lsource.dart';
import 'package:bidding/src/on_boarding/domain/repos/on_boarding_repo.dart';

class OnBoardingRepoImplementation extends OnBoardingRepo {
  const OnBoardingRepoImplementation(this._localDataSource);

  final OnBoardingLocalDatasource _localDataSource;

  @override
  ResultFuture<void> cacheFirstTimer() async {
    try {
      await _localDataSource.cacheFirstTimer();
      return const Right(null);
    } on CacheException catch (e) {
      return Left(
        CacheFailure(message: e.message, statusCode: e.statusCode),
      );
    }
  }

  @override
  ResultFuture<bool> checkIfUserIsFirstTimer() async {
    try {
      final result = await _localDataSource.checkIfUserIsFirstTimer();
      return Right(result);
    } on CacheException catch (e) {
      return Left(
        CacheFailure(message: e.message, statusCode: e.statusCode),
      );
    }
  }
}
