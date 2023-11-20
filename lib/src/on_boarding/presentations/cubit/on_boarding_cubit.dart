import 'package:bloc/bloc.dart';
import 'package:bidding/src/on_boarding/domain/usecases/cache_first_timer.dart';
import 'package:bidding/src/on_boarding/domain/usecases/check_if_user_first_timer.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit({
    required CheckIfUserIsFirstTimer checkIfUserIsFirstTimer,
    required CacheFirstTimer cacheFirstTimer,
  })  : _checkIfUserIsFirstTimer = checkIfUserIsFirstTimer,
        _cacheFirstTimer = cacheFirstTimer,
        super(const OnBoardingInitial());

  final CacheFirstTimer _cacheFirstTimer;
  final CheckIfUserIsFirstTimer _checkIfUserIsFirstTimer;

  // Method
  Future<void> cacheFirstTimer() async {
    emit(const CachingFirstTimer());
    final result = await _cacheFirstTimer();

    result.fold(
      (failure) => emit(OnBoardError(failure.errorMessage)),
      (_) => emit(const UserCached()),
    );
  }

  // First timer
  Future<void> checkingIfUserIsFirstTimer() async {
    emit(const CheckingIfUserIsFirstTimer());
    final result = await _checkIfUserIsFirstTimer();

    result.fold(
      (failure) => emit(const OnBoardingStatus(isFirstTimer: false)),
      (status) => emit(OnBoardingStatus(isFirstTimer: status)),
    );
  }
}
