import '../dr_list_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_leading_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_subtitle.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';

class DrListScreen extends StatelessWidget {
  const DrListScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            top: 23.v,
            right: 24.h,
          ),
          child: ListView.separated(
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
              return UserprofileItemWidget();
            },
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
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "RECRUITS PLT 1 (78)",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgComponent1,
          margin: EdgeInsets.all(20.h),
        ),
      ],
    );
  }
}
