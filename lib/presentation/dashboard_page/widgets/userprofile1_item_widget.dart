import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: GestureDetector(
        onTap: () {
          onTapUserProfile!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 10.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse27image,
                height: 68.adaptSize,
                width: 68.adaptSize,
                alignment: Alignment.center,
              ),
              SizedBox(height: 18.v),
              Text(
                "EVENT",
                style: CustomTextStyles.bodySmallInterGray700,
              ),
              SizedBox(height: 3.v),
              Text(
                "Description",
                style: CustomTextStyles.labelSmall9,
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  Container(
                    width: 26.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "4,7",
                            style: CustomTextStyles.labelSmallCyan300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 23.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "2 days ago",
                      style: CustomTextStyles.labelSmallBluegray100,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
