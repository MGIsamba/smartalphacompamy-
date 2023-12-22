import '../home_screen_refresh_always_refresh_pull_screen/widgets/userstory_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/presentation/dashboard_page/dashboard_page.dart';
import 'package:mgi_s_application19/presentation/settigns_page/settigns_page.dart';
import 'package:mgi_s_application19/widgets/custom_bottom_bar.dart';
import 'package:mgi_s_application19/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreenRefreshAlwaysRefreshPullScreen extends StatelessWidget {
  HomeScreenRefreshAlwaysRefreshPullScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeaderContainerTopBar(context),
                      SizedBox(height: 13.v),
                      _buildUserStory(context),
                      SizedBox(height: 9.v),
                      Divider(),
                      SizedBox(height: 11.v),
                      _buildSeventyEight(context),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(children: [
                            _buildComment(context,
                                pressedState:
                                    ImageConstant.imgDefaultActionRemote,
                                defaultState:
                                    ImageConstant.imgActiveActionRemote),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: _buildComment(context,
                                    pressedState: ImageConstant.imgSearch,
                                    defaultState: ImageConstant
                                        .imgSearchBlack900, onTapSearch: () {
                                  onTapSearch(context);
                                })),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: _buildComment(context,
                                    pressedState: ImageConstant.imgSave,
                                    defaultState:
                                        ImageConstant.imgSaveBlack900))
                          ])),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                              "Leo tumetembelewa na ugeni kutoka wizarani.",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildHeaderContainerTopBar(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 8.v),
        decoration: AppDecoration.fillPrimary,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  height: 29.v,
                  width: 98.h,
                  margin: EdgeInsets.only(top: 44.v),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 29.v,
                            width: 49.h,
                            decoration: BoxDecoration(
                                color: theme.colorScheme.onSecondaryContainer,
                                borderRadius: BorderRadius.circular(3.h)))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                            height: 26.v,
                            width: 94.h,
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              CustomImageView(
                                  imagePath: ImageConstant
                                      .imgSettingsOnsecondarycontainer,
                                  height: 26.v,
                                  width: 94.h,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Text("A COY",
                                          style: theme.textTheme.bodyLarge)))
                            ])))
                  ])),
              Padding(
                  padding: EdgeInsets.only(top: 44.v, right: 11.h),
                  child: CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      onTap: () {
                        onTapBtnPressed(context);
                      },
                      child:
                          CustomImageView(imagePath: ImageConstant.imgPressed)))
            ]));
  }

  /// Section Widget
  Widget _buildUserStory(BuildContext context) {
    return SizedBox(
        height: 87.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 10.h, right: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 29.h);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return UserstoryItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildSeventyEight(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse,
                height: 36.adaptSize,
                width: 36.adaptSize,
                radius: BorderRadius.circular(18.h)),
            Padding(
                padding: EdgeInsets.only(left: 9.h, top: 12.v, bottom: 5.v),
                child: Text("ASP.PAZZIA",
                    style: CustomTextStyles.labelLargeNotoSansBlack900))
          ])),
      SizedBox(height: 15.v),
      CustomImageView(
          imagePath: ImageConstant.imgImage,
          height: 375.adaptSize,
          width: 375.adaptSize,
          onTap: () {
            onTapImgImage(context);
          })
    ]);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildComment(
    BuildContext context, {
    required String pressedState,
    required String defaultState,
    Function? onTapSearch,
  }) {
    return SizedBox(
        height: 30.adaptSize,
        width: 30.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: pressedState,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapSearch!.call();
              }),
          CustomImageView(
              imagePath: defaultState,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center)
        ]));
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

  /// Navigates to the newPostTransitionPushRightNomenuScreen when the action is triggered.
  onTapBtnPressed(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.newPostTransitionPushRightNomenuScreen);
  }

  /// Navigates to the postDetailRefreshPullNomenuScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.postDetailRefreshPullNomenuScreen);
  }

  /// Navigates to the commentsRefreshAlwaysRefreshPullTransitionPushLefScreen when the action is triggered.
  onTapSearch(BuildContext context) {
    Navigator.pushNamed(context,
        AppRoutes.commentsRefreshAlwaysRefreshPullTransitionPushLefScreen);
  }
}
