import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key, this.pageController, this.pageIndex}) : super(key: key);

  final PageController? pageController;
  final int? pageIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.baseColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Lottie.asset(
                'assets/animations/lottie/business_welcome_page.json',
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'Todo ', style: AppTextStyles.welcomeLabel),
                      TextSpan(text: 'controle', style: AppTextStyles.welcomeLabelbold),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'sob ', style: AppTextStyles.welcomeLabel),
                      TextSpan(text: 'uma mão,', style: AppTextStyles.welcomeLabelbold),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'ou duas!', style: AppTextStyles.welcomeLabelbold),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SizedBox(
                        width: 300,
                        child: Lottie.asset(
                          'assets/animations/lottie/happy_to_get_fund.json',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    right: -25,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Lottie.asset(
                          'assets/animations/lottie/growing_arrow_right.json',
                          width: 150,
                        ),
                        InkWell(
                          onTap: () => pageController!.animateToPage(pageIndex!, duration: const Duration(milliseconds: 300), curve: Curves.ease),
                          child: const SizedBox(width: 75, height: 55),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
