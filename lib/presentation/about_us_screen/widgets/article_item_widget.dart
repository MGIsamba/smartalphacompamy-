import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';

// ignore: must_be_immutable
class ArticleItemWidget extends StatelessWidget {
  ArticleItemWidget({
    Key? key,
    this.onTapArticle,
  }) : super(
          key: key,
        );

  VoidCallback? onTapArticle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapArticle!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 75.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            Text(
              "BUSTANI",
              style: CustomTextStyles.labelLargeGray700,
            ),
            SizedBox(height: 22.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jun 10, 2021 ",
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
                    "5min read",
                    style: CustomTextStyles.labelSmallCyan3009,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
