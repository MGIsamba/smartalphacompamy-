import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_title.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';

class NewPostTransitionPushRightNomenuScreen extends StatelessWidget {
  const NewPostTransitionPushRightNomenuScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageUpload(context),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "Write a caption....",
                  style: CustomTextStyles.bodyLargeNotoSansBlack900,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 37.h,
      leading: Container(
        height: 27.adaptSize,
        width: 27.adaptSize,
        margin: EdgeInsets.only(
          left: 10.h,
          top: 14.v,
          bottom: 14.v,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPressedGray500,
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgDefaultActionGoback,
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "New post",
      ),
      actions: [
        Container(
          height: 21.999996.v,
          width: 55.h,
          margin: EdgeInsets.fromLTRB(15.h, 18.v, 15.h, 15.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Upload",
                  style: CustomTextStyles.titleMediumNotoSansLightblue900,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Upload",
                  style: CustomTextStyles.titleMediumNotoSansBlue600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildImageUpload(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImageUpload,
      height: 375.adaptSize,
      width: 375.adaptSize,
    );
  }
}
