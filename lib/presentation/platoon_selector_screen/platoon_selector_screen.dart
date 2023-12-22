import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/presentation/dashboard_page/dashboard_page.dart';
import 'package:mgi_s_application19/presentation/settigns_page/settigns_page.dart';
import 'package:mgi_s_application19/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class PlatoonSelectorScreen extends StatelessWidget {
  PlatoonSelectorScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 29.v),
                      _buildFortySeven(context),
                      SizedBox(height: 6.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSeven(context);
                          },
                          child: Container(
                              width: 145.h,
                              margin: EdgeInsets.only(left: 87.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 1.v),
                              decoration: AppDecoration.fillCyan.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Text("1",
                                  style: theme.textTheme.displaySmall))),
                      SizedBox(height: 5.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("2", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 5.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("3", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 5.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("4", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 6.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("5", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 6.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("6", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 5.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("7", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 6.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("8", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 6.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("9", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 6.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("10", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 7.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("11", style: theme.textTheme.displaySmall)),
                      SizedBox(height: 7.v),
                      Container(
                          width: 145.h,
                          margin: EdgeInsets.only(left: 87.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Text("12", style: theme.textTheme.displaySmall))
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return Container(
        height: 30.v,
        width: 334.h,
        margin: EdgeInsets.only(left: 1.h),
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgComponent1Primary,
              height: 16.v,
              width: 4.h,
              alignment: Alignment.topRight),
          Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Platoon", style: theme.textTheme.headlineSmall),
                    CustomImageView(
                        imagePath: ImageConstant.imgUserGray700,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(top: 2.v, bottom: 3.v))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Messages:
        return "/";
      case BottomBarEnum.Dailyreport:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.settignsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.settignsPage:
        return SettignsPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the drListScreen when the action is triggered.
  onTapTxtSeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.drListScreen);
  }
}
