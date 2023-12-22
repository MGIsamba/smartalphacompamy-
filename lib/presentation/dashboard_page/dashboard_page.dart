import '../dashboard_page/widgets/eightyfive_item_widget.dart';
import '../dashboard_page/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/custom_elevated_button.dart';
import 'package:mgi_s_application19/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
                child: Column(children: [
                  SizedBox(height: 65.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 12.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildHeader(context),
                                    SizedBox(height: 25.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 28.h),
                                        child: CustomSearchView(
                                            controller: searchController,
                                            hintText:
                                                "Search about us, platoon,recruite ...")),
                                    SizedBox(height: 35.v),
                                    _buildEightyFive(context),
                                    SizedBox(height: 13.v),
                                    _buildOfferBanner(context),
                                    SizedBox(height: 39.v),
                                    _buildTop(context),
                                    SizedBox(height: 13.v),
                                    _buildUserProfile(context),
                                    SizedBox(height: 30.v),
                                    _buildViewPdf(context)
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 20.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 12.v),
                  child: Text("TPS MOSHI - A COY",
                      style: theme.textTheme.headlineSmall)),
              CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 26.v,
                  width: 24.h,
                  margin: EdgeInsets.only(top: 15.v))
            ]));
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 78.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 8.h, right: 13.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 17.h);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return EightyfiveItemWidget(onTapBtnSettings: () {
                    onTapBtnSettings(context);
                  });
                })));
  }

  /// Section Widget
  Widget _buildOfferBanner(BuildContext context) {
    return Container(
        height: 116.v,
        width: 335.h,
        margin: EdgeInsets.only(left: 8.h),
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle6,
              height: 116.v,
              width: 335.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center,
              onTap: () {
                onTapImgImage(context);
              }),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("TRENDING TPS EVENTS",
                                style: theme.textTheme.titleLarge)),
                        SizedBox(height: 35.v),
                        CustomElevatedButton(
                            height: 29.v,
                            width: 108.h,
                            text: "Learn more",
                            buttonStyle: CustomButtonStyles.fillCyan,
                            buttonTextStyle: CustomTextStyles.labelLargePrimary)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildTop(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 20.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Top A Coy Updates", style: CustomTextStyles.titleMedium16),
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text("See all",
                  style: CustomTextStyles.bodySmallInterCyan300))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
        height: 173.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 8.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 14.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Userprofile1ItemWidget(onTapUserProfile: () {
                onTapUserProfile(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildViewPdf(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 15.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Today’s Beat and Patrol",
                        style: CustomTextStyles.titleMedium16),
                    Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text("See all",
                            style: CustomTextStyles.bodySmallInterCyan300))
                  ])),
          SizedBox(height: 13.v),
          Container(
              margin: EdgeInsets.only(right: 12.h),
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.outlineBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
              child: Row(mainAxisSize: MainAxisSize.max, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgThumbnail,
                    height: 55.adaptSize,
                    width: 55.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 7.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Beat & Patrol - 18/12/2023",
                              style:
                                  CustomTextStyles.labelMediumGray700SemiBold),
                          SizedBox(height: 15.v),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jun 10, 2021 ",
                                    style: theme.textTheme.labelSmall),
                                Container(
                                    height: 2.adaptSize,
                                    width: 2.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 5.h, top: 3.v, bottom: 4.v),
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.errorContainer,
                                        borderRadius:
                                            BorderRadius.circular(1.h))),
                                Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text("5min read",
                                        style: theme.textTheme.labelSmall))
                              ])
                        ])),
                CustomElevatedButton(
                    height: 29.v,
                    width: 108.h,
                    text: "View PDF",
                    margin: EdgeInsets.only(left: 2.h, top: 18.v, bottom: 8.v),
                    buttonStyle: CustomButtonStyles.fillCyan,
                    buttonTextStyle: CustomTextStyles.labelLargePrimary)
              ]))
        ]));
  }

  /// Navigates to the articlePostScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.articlePostScreen);
  }

  /// Navigates to the articlePostScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.articlePostScreen);
  }

  /// Navigates to the homeScreenRefreshAlwaysRefreshPullScreen when the action is triggered.
  onTapBtnSettings(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.homeScreenRefreshAlwaysRefreshPullScreen);
  }
}
