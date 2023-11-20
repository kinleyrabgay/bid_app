import 'package:bidding/core/common/views/loading_view.dart';
import 'package:bidding/core/common/widgets/gradient_background.dart';
import 'package:bidding/core/res/colours.dart';
import 'package:bidding/core/res/media_res.dart';
import 'package:bidding/src/on_boarding/presentations/cubit/on_boarding_cubit.dart';
import 'package:bidding/src/on_boarding/presentations/utils/on_board_animator.dart';
import 'package:bidding/src/on_boarding/presentations/widgets/on_boarding_body.dart';
import 'package:bidding/src/on_boarding/presentations/constants/page_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  static const routeName = '/';

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final pageController = PageController();
  OnboardingAnimation? onboardingAnimation;

  // void cacheFeatures() {
  //   context.read<SettingCubit>().cacheFeatures(featureList);
  // }

  @override
  void initState() {
    super.initState();
    context.read<OnBoardingCubit>().checkingIfUserIsFirstTimer();
    onboardingAnimation = OnboardingAnimation(pageController);
    onboardingAnimation?.startAnimation();
    // cacheFeatures();
  }

  @override
  void dispose() {
    onboardingAnimation?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final minSize = MediaQuery.of(context).size.height * 0.075;
    return Scaffold(
        body: GradientBackground(
      image: MediaRes.onBoardingBackground,
      child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {
          if (state is OnBoardingStatus && !state.isFirstTimer) {
            Navigator.pushReplacementNamed(context, '/setting');
          } else if (state is UserCached) {
            Navigator.pushReplacementNamed(context, '/setting');
          }
        },
        builder: (context, state) {
          if (state is CheckingIfUserIsFirstTimer) {
            return const LoadingView();
          }

          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: const [
                      OnboardingBody(pageContent: PageContent.first()),
                      OnboardingBody(pageContent: PageContent.second()),
                      OnboardingBody(pageContent: PageContent.third()),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      onDotClicked: (index) {
                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      effect: WormEffect(
                        dotHeight: 15,
                        dotWidth: 15,
                        spacing: 20,
                        activeDotColor: Colours.primaryColour,
                        dotColor: Colours.primaryColour.withOpacity(0.4),
                        paintStyle: PaintingStyle.stroke,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: Colours.primaryColour,
                        foregroundColor: Colors.white,
                        minimumSize: Size(minSize, minSize),
                      ),
                      onPressed: () {
                        context.read<OnBoardingCubit>().cacheFirstTimer();
                      },
                      child: const Icon(
                        CupertinoIcons.arrow_right,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
