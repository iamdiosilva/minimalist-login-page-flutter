import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class HeaderDecoration extends StatefulWidget {
  const HeaderDecoration({Key? key}) : super(key: key);

  @override
  State<HeaderDecoration> createState() => _HeaderDecorationState();
}

class _HeaderDecorationState extends State<HeaderDecoration> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
        ),
        Positioned(
          top: -100,
          right: -100,
          child: AnimatedContainer(
            duration: const Duration(seconds: 5),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              color: AppColors.baseColor300,
            ),
          ),
        ),
        Positioned(
          top: -125,
          left: 0,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 225,
              width: 225,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: AppColors.baseColor200,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
