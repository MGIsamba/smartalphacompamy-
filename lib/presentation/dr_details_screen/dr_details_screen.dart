import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_leading_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_subtitle.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';
import 'package:readmore/readmore.dart';

class DrDetailsScreen extends StatelessWidget {
  const DrDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
              _buildDoctor1(context),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "About",
                  style: CustomTextStyles.titleMedium16,
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                width: 313.h,
                margin: EdgeInsets.only(left: 1.h),
                child: ReadMoreText(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam... ",
                  trimLines: 3,
                  colorClickableText: appTheme.cyan300,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "Read more",
                  moreStyle:
                      CustomTextStyles.bodySmallInterErrorContainer.copyWith(
                    height: 1.67,
                  ),
                  lessStyle:
                      CustomTextStyles.bodySmallInterErrorContainer.copyWith(
                    height: 1.67,
                  ),
                ),
              ),
              Spacer(
                flex: 32,
              ),
              Divider(
                color: appTheme.blueGray50,
              ),
              Spacer(
                flex: 67,
              ),
            ],
          ),
        ),
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
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "OC - ASP PAZZIA",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgComponent1,
          margin: EdgeInsets.fromLTRB(20.h, 20.v, 20.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDoctor1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnail1,
            height: 111.adaptSize,
            width: 111.adaptSize,
            margin: EdgeInsets.only(top: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 31.v,
              bottom: 28.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ASP.PAZZIA",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "OC A COY",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
