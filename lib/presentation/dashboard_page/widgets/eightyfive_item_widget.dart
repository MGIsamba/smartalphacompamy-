import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class EightyfiveItemWidget extends StatelessWidget {
  EightyfiveItemWidget({
    Key? key,
    this.onTapBtnSettings,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBtnSettings;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(bottom: 7.v),
          child: CustomIconButton(
            height: 71.adaptSize,
            width: 71.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillCyan,
            onTap: () {
              onTapBtnSettings!.call();
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
            ),
          ),
        ),
      ),
    );
  }
}
