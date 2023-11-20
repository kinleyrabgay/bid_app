import 'package:bidding/core/res/colours.dart';
import 'package:bidding/core/res/fonts.dart';
import 'package:bidding/core/services/injection_container.dart';
import 'package:bidding/core/services/router.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding App',
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: Fonts.poppins,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
        ),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colours.primaryColour,
        ),
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
