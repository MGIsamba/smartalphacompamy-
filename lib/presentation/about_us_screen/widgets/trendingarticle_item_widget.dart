import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';

// ignore: must_be_immutable
class TrendingarticleItemWidget extends StatelessWidget {
  TrendingarticleItemWidget({
    Key? key,
    this.onTapTrendingArticle,
  }) : super(
          key: key,
        );

  VoidCallback? onTapTrendingArticle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 153.h,
      child: GestureDetector(
        onTap: () {
          onTapTrendingArticle!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 4.v,
          ),
          decoration: AppDecoration.outlineBluegray10001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle54,
                height: 87.v,
                width: 138.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                margin: EdgeInsets.only(left: 2.h),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "title ",
                  style: CustomTextStyles.labelSmallCyan3009,
                ),
              ),
              SizedBox(height: 6.v),
              Container(
                width: 139.h,
                margin: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Lorem ipsum dolor\n sit amet consectetu\nr. In ut arcu quam est et.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeGray700.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jun 12, 2021",
                      style: CustomTextStyles.labelSmall9,
                    ),
                    Container(
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "6 min read",
                        style: CustomTextStyles.labelSmallCyan3009,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
