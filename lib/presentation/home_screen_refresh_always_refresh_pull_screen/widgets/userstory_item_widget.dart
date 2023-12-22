import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';

// ignore: must_be_immutable
class UserstoryItemWidget extends StatelessWidget {
  const UserstoryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Container(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(2.h),
              decoration: AppDecoration.outline.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder32,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgProfilepic,
                height: 56.adaptSize,
                width: 56.adaptSize,
                radius: BorderRadius.circular(
                  28.h,
                ),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              "ASP.Pazzia",
              style: CustomTextStyles.bodySmallNotoSansBlack900,
            ),
          ],
        ),
      ),
    );
  }
}
