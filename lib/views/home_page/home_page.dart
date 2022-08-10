import 'package:flutter/material.dart';

import '../login_page/login_page.dart';
import '../welcome_page/welcome_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  late PageController pController;

  @override
  void initState() {
    super.initState();
    pController = PageController(initialPage: currentPage);
  }

  _setCurrentPage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
        controller: pController,
        onPageChanged: (value) => _setCurrentPage(value),
        children: [
          WelcomePage(pageController: pController, pageIndex: 1),
          const LoginPage(),
        ],
      ),
    );
  }
}
