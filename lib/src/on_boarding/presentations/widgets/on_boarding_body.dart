import 'package:bidding/core/extensions/context_extension.dart';
import 'package:bidding/core/res/colours.dart';
import 'package:bidding/core/res/fonts.dart';
import 'package:bidding/src/on_boarding/presentations/constants/page_content.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({required this.pageContent, super.key});

  final PageContent pageContent;

  static double fontSize = 35;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(pageContent.image, height: context.height * .5),
        SizedBox(height: context.height * .05),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: pageContent.title,
                style: TextStyle(
                  fontFamily: Fonts.aeonik,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colours.primaryColour,
                ),
              ),
              TextSpan(
                text: pageContent.description,
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
