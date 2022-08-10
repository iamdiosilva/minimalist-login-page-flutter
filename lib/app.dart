import 'package:flutter/material.dart';

import 'core/theme/app_colors.dart';
import 'views/home_page/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: AppColors.mainColorTheme,
        ),
      ),
      home: const HomePage(),
    );
  }
}
