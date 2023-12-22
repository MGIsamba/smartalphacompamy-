import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';

// ignore: must_be_immutable
class SlidecontainerItemWidget extends StatelessWidget {
  const SlidecontainerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgUnsplashSqymtdqymjo,
        height: 132.v,
        width: 157.h,
        radius: BorderRadius.circular(
          21.h,
        ),
      ),
    );
  }
}
