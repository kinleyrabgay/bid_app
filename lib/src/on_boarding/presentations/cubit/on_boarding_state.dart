part of 'on_boarding_cubit.dart';

@immutable
abstract class OnBoardingState extends Equatable {
  const OnBoardingState();

  @override
  List<Object?> get props => [];
}

class OnBoardingInitial extends OnBoardingState {
  const OnBoardingInitial();
}

// Caching
class CachingFirstTimer extends OnBoardingState {
  const CachingFirstTimer();
}

// Check FirstTimer
class CheckingIfUserIsFirstTimer extends OnBoardingState {
  const CheckingIfUserIsFirstTimer();
}

// User Cached
class UserCached extends OnBoardingState {
  const UserCached();
}

// Status
class OnBoardingStatus extends OnBoardingState {
  const OnBoardingStatus({required this.isFirstTimer});
  final bool isFirstTimer;

  @override
  List<bool> get props => [isFirstTimer];
}

// Error
class OnBoardError extends OnBoardingState {
  const OnBoardError(this.message);

  final String message;

  @override
  List<String> get props => [message];
}
