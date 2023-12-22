import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/custom_elevated_button.dart';
import 'package:mgi_s_application19/widgets/custom_outlined_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.cyan300,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 46.v),
                child: Column(children: [
                  Spacer(flex: 41),
                  CustomImageView(
                      imagePath: ImageConstant.imgHiDocLogo,
                      height: 135.v,
                      width: 154.h,
                      radius: BorderRadius.circular(43.h)),
                  Spacer(flex: 58),
                  CustomOutlinedButton(
                      text: "Login",
                      onPressed: () {
                        onTapLogin(context);
                      }),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                      text: "Sign up",
                      onPressed: () {
                        onTapSignUp(context);
                      })
                ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
