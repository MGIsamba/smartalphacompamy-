import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/custom_elevated_button.dart';
import 'package:mgi_s_application19/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.cyan300,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 35.v),
                    child: Column(children: [
                      Spacer(flex: 32),
                      CustomImageView(
                          imagePath: ImageConstant.imgHiDocLogo42x115,
                          height: 42.v,
                          width: 115.h),
                      SizedBox(height: 25.v),
                      Text("Welcome to ACOY PLAFORM",
                          style: CustomTextStyles
                              .titleMediumPoppinsOnErrorContainer),
                      SizedBox(height: 10.v),
                      Text("Sign in to continue",
                          style: CustomTextStyles.bodySmallGray5001),
                      SizedBox(height: 28.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "Your Email",
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSystemIcon24pxMessage,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: "Password",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgLocation,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 48.v),
                          obscureText: true),
                      SizedBox(height: 27.v),
                      CustomElevatedButton(
                          text: "Sign in",
                          onPressed: () {
                            onTapSignIn(context);
                          }),
                      SizedBox(height: 23.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtForgotPassword(context);
                          },
                          child: Text("Forgot Password?",
                              style:
                                  CustomTextStyles.labelLargePoppinsPrimary)),
                      Spacer(flex: 67),
                      GestureDetector(
                          onTap: () {
                            onTapTxtConfirmation(context);
                          },
                          child: Text("Don’t have an account? Register",
                              style: CustomTextStyles.labelLargePoppinsPrimary))
                    ])))));
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardContainerScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtConfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
