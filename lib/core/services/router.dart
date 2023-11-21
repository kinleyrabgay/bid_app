import 'package:bidding/core/common/views/page_under_construction.dart';
import 'package:bidding/core/extensions/context_extension.dart';
import 'package:bidding/core/services/injection_container.dart';
import 'package:bidding/src/auth/data/models/user_model.dart';
import 'package:bidding/src/auth/presentation/bloc/auth_bloc.dart';
import 'package:bidding/src/auth/presentation/views/sign_in_screen.dart';
import 'package:bidding/src/auth/presentation/views/sign_up_screen.dart';
import 'package:bidding/src/home/presentation/view/home.dart';
import 'package:bidding/src/on_boarding/data/datasource/on_boarding_lsource.dart';
import 'package:bidding/src/on_boarding/presentations/cubit/on_boarding_cubit.dart';
import 'package:bidding/src/on_boarding/presentations/views/on_boarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as fui;
import 'package:shared_preferences/shared_preferences.dart';

part 'router.main.dart';
