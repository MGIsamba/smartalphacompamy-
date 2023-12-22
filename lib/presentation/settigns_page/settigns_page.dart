import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SettignsPage extends StatelessWidget {
  const SettignsPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.34, 0.36),
              end: Alignment(1.07, -0.32),
              colors: [
                appTheme.cyan300,
                appTheme.teal400,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.gradientCyanToTeal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 69.v),
                CustomImageView(
                  imagePath: ImageConstant.imgComponent1Primary,
                  height: 16.v,
                  width: 4.h,
                  margin: EdgeInsets.only(right: 20.h),
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 80.h,
                    margin: EdgeInsets.only(
                      left: 146.h,
                      right: 149.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 54.v),
                        Container(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          padding: EdgeInsets.all(3.h),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCamera,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 124.h),
                    child: Text(
                      "USER NAME",
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 63.h,
                    right: 43.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 30.v,
                              width: 27.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 7.h),
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "RANK",
                              style: CustomTextStyles.titleMediumPrimary16,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27.h),
                        child: SizedBox(
                          height: 69.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.cyan100,
                            indent: 12.h,
                            endIndent: 13.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 6.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgHome,
                              height: 35.v,
                              width: 42.h,
                              margin: EdgeInsets.only(left: 25.h),
                            ),
                            SizedBox(height: 9.v),
                            Text(
                              "DEPARTMENT",
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: SizedBox(
                          height: 69.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.cyan100,
                            indent: 12.h,
                            endIndent: 13.h,
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 70.v,
                        width: 49.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 5.h),
                                        child: Text(
                                          "bio",
                                          style: CustomTextStyles
                                              .labelMediumCyan100,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 1.v),
                                    Text(
                                      "BIO",
                                      style:
                                          CustomTextStyles.titleMediumPrimary16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUserPrimary49x49,
                              height: 49.adaptSize,
                              width: 49.adaptSize,
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 42.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 31.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppointment(
                        context,
                        appointmnet: "Update",
                      ),
                      SizedBox(height: 13.v),
                      Divider(
                        color: appTheme.blueGray50,
                      ),
                      SizedBox(height: 13.v),
                      _buildAppointment(
                        context,
                        appointmnet: "Old Post",
                      ),
                      SizedBox(height: 13.v),
                      Divider(
                        color: appTheme.blueGray50,
                      ),
                      SizedBox(height: 13.v),
                      _buildAppointment(
                        context,
                        appointmnet: "Direct Message",
                      ),
                      SizedBox(height: 13.v),
                      Divider(
                        color: appTheme.blueGray50,
                      ),
                      SizedBox(height: 13.v),
                      _buildAppointment(
                        context,
                        appointmnet: "FAQs",
                      ),
                      SizedBox(height: 13.v),
                      Divider(
                        color: appTheme.blueGray50,
                      ),
                      SizedBox(height: 13.v),
                      _buildAppointment(
                        context,
                        appointmnet: "Help",
                      ),
                      SizedBox(height: 24.v),
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

  /// Common widget
  Widget _buildAppointment(
    BuildContext context, {
    required String appointmnet,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 43.adaptSize,
          width: 43.adaptSize,
          padding: EdgeInsets.all(9.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.h,
            top: 11.v,
            bottom: 11.v,
          ),
          child: Text(
            appointmnet,
            style: CustomTextStyles.titleMedium16.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 10.v,
            bottom: 9.v,
          ),
        ),
      ],
    );
  }
}
