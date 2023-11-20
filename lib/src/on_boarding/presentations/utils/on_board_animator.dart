import 'dart:async';

import 'package:flutter/material.dart';

class OnboardingAnimation {
  OnboardingAnimation(this._pageController);

  final PageController _pageController;
  Timer? timer;

  void startAnimation() {
    bool increasing = true;
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.page != null) {
        if (increasing) {
          if (_pageController.page! < 2) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          } else {
            increasing = false;
            _pageController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        } else {
          if (_pageController.page! > 0) {
            _pageController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          } else {
            increasing = true;
            _pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        }
      }
    });
  }

  void dispose() {
    timer?.cancel();
  }
}
