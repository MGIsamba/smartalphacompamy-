import '../recruit_screen/widgets/doctorprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_leading_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_subtitle.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';
import 'package:mgi_s_application19/widgets/custom_search_view.dart';

class RecruitScreen extends StatelessWidget {
  RecruitScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 27.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                children: [
                  CustomSearchView(
                    controller: searchController,
                    hintText: "Search Recruit...",
                    contentPadding: EdgeInsets.only(
                      top: 12.v,
                      right: 30.h,
                      bottom: 12.v,
                    ),
                  ),
                  SizedBox(height: 25.v),
                  _buildOfferBanner(context),
                  SizedBox(height: 48.v),
                  _buildPopularProduct(context),
                  SizedBox(height: 12.v),
                  _buildDoctorProfile(context),
                ],
              ),
            ),
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
          top: 20.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Recruits Information",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCart,
          margin: EdgeInsets.fromLTRB(33.h, 11.v, 33.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOfferBanner(BuildContext context) {
    return SizedBox(
      height: 116.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle6116x335,
            height: 116.v,
            width: 335.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Recruits Events",
                      style: CustomTextStyles.headlineSmallGray50,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Container(
                    width: 150.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillCyan.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Text(
                      "More ....",
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularProduct(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Platoons",
          style: CustomTextStyles.titleMediumBlack900,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            "See all",
            style: CustomTextStyles.bodySmallInterCyan300,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDoctorProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 11.v,
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return Doctorprofile1ItemWidget();
      },
    );
  }
}
