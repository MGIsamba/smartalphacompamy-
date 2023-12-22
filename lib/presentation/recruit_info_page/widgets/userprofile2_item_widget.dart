import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnail1111x111,
            height: 111.adaptSize,
            width: 111.adaptSize,
            margin: EdgeInsets.only(left: 3.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 32.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "J.6493",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 9.v),
                Text(
                  "RC. GOZIBETH CHARLES  MGANDE",
                  style: CustomTextStyles.labelMediumGray700,
                ),
                SizedBox(height: 10.v),
                Text(
                  "A-Coy(2)",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
