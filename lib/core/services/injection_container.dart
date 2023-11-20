import 'package:bidding/src/on_boarding/data/datasource/on_boarding_lsource.dart';
import 'package:bidding/src/on_boarding/data/repos/on_boarding_repo_impl.dart';
import 'package:bidding/src/on_boarding/domain/repos/on_boarding_repo.dart';
import 'package:bidding/src/on_boarding/domain/usecases/cache_first_timer.dart';
import 'package:bidding/src/on_boarding/domain/usecases/check_if_user_first_timer.dart';
import 'package:bidding/src/on_boarding/presentations/cubit/on_boarding_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'injection_container.main.dart';
