import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';

// ignore: must_be_immutable
class DoctorprofileItemWidget extends StatelessWidget {
  DoctorprofileItemWidget({
    Key? key,
    this.onTapDoctorProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapDoctorProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapDoctorProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder11,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnail1,
              height: 111.adaptSize,
              width: 111.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 8.v,
                bottom: 61.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ASP - PAZZIA",
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "OC A COY",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
