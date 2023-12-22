import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_leading_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_subtitle.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';
import 'package:mgi_s_application19/widgets/custom_elevated_button.dart';
import 'package:mgi_s_application19/widgets/custom_text_form_field.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 24.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildDoctorDetails1(
                  context,
                  title: "Chart Start",
                  time: "You can send messages for A COY TEAM",
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildDoctorDetails1(
                  context,
                  title: "ASP Paazzia",
                  time: "10 min ago",
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                width: 205.h,
                margin: EdgeInsets.only(
                  left: 1.h,
                  right: 129.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Text(
                      "Hello, How is the day?",
                      style: CustomTextStyles.bodyMediumInterGray700,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(left: 98.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.fillCyan.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      SizedBox(
                        width: 208.h,
                        child: Text(
                          "Lorem ipsum dolor sit amet con\nsectetur. Sit donec accumsan \nmalesuada eg",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.bodyMediumInterPrimary.copyWith(
                            height: 1.43,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 54.h),
                child: Text(
                  "ASP Paazzia",
                  style: CustomTextStyles.titleSmallGray700,
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 54.h),
                child: Text(
                  "5 min ago",
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                width: 221.h,
                margin: EdgeInsets.only(
                  left: 1.h,
                  right: 113.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Container(
                      width: 180.h,
                      margin: EdgeInsets.only(right: 14.h),
                      child: Text(
                        "Lorem ipsum dolor sit amet \nconsectetur.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumInterGray700.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 237.h,
                  margin: EdgeInsets.only(left: 98.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillCyan.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Container(
                        width: 180.h,
                        margin: EdgeInsets.only(right: 28.h),
                        child: Text(
                          "Lorem ipsum dolor sit amet \nconsectetur.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.bodyMediumInterGray700.copyWith(
                            height: 1.43,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 54.h),
                child: Text(
                  "ASP Paazzia",
                  style: CustomTextStyles.titleSmallGray700,
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 54.h),
                child: Text(
                  "Online",
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                height: 22.v,
                width: 58.h,
                margin: EdgeInsets.only(left: 1.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL5,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup141,
                  height: 5.v,
                  width: 32.h,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildThirtySeven(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Charts",
        margin: EdgeInsets.only(left: 18.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUpload,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 18.v,
            right: 18.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCall,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 18.v,
            right: 18.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgComponent1,
          margin: EdgeInsets.fromLTRB(20.h, 20.v, 38.h, 2.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThirtySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 26.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomTextFormField(
              width: 206.h,
              controller: messageController,
              hintText: "Type message ...",
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(10.h, 11.v, 8.h, 10.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgThumbsup,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 49.v,
              ),
            ),
          ),
          CustomElevatedButton(
            width: 111.h,
            text: "Send",
            margin: EdgeInsets.only(left: 17.h),
            buttonStyle: CustomButtonStyles.fillCyan,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDoctorDetails1(
    BuildContext context, {
    required String title,
    required String time,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 53.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: CustomTextStyles.titleSmallGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            time,
            style: theme.textTheme.labelMedium!.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ],
      ),
    );
  }
}
