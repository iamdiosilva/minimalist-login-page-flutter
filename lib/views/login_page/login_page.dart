import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import 'components/header_decoration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: AppColors.baseColor,
            child: Column(
              children: [
                const HeaderDecoration(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      LottieBuilder.asset(
                        'assets/animations/lottie/login_profile.json',
                        repeat: false,
                        width: 200,
                      ),
                      const SizedBox(height: 25),
                      Form(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.baseColor200,
                          ),
                          child: TextFormField(
                            style: AppTextStyles.loginFormField,
                            decoration: InputDecoration(
                              hintText: 'User',
                              hintStyle: AppTextStyles.loginPageHint,
                              prefixIcon: const Icon(Icons.person),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Form(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.baseColor200,
                          ),
                          child: TextFormField(
                            style: AppTextStyles.loginFormField,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: AppTextStyles.loginPageHint,
                              prefixIcon: const Icon(Icons.key),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.baseColor200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  'Login',
                                  style: TextStyle(fontSize: 20, color: AppColors.white54),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            fillColor: MaterialStateProperty.all(AppColors.baseColor200),
                            value: rememberMe,
                            onChanged: (value) => setState(() {
                              rememberMe = !rememberMe;
                            }),
                          ),
                          Text('Remember me', style: AppTextStyles.checkBoxText),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
