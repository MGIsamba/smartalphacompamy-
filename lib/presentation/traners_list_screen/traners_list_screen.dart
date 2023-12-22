import '../traners_list_screen/widgets/doctorprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_leading_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_subtitle.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';

class TranersListScreen extends StatelessWidget {
  const TranersListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 14.h, top: 21.v, right: 24.h),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 11.v);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return DoctorprofileItemWidget(onTapDoctorProfile: () {
                        onTapDoctorProfile(context);
                      });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 17.h, top: 16.v, bottom: 16.v)),
        title: AppbarSubtitle(
            text: "A COY TRAINERS", margin: EdgeInsets.only(left: 100.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent1,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v))
        ]);
  }

  /// Navigates to the drDetailsScreen when the action is triggered.
  onTapDoctorProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.drDetailsScreen);
  }
}
