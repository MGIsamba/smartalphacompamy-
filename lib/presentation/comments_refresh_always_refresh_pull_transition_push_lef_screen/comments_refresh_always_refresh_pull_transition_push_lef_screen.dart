import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_title.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_title_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';
import 'package:mgi_s_application19/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CommentsRefreshAlwaysRefreshPullTransitionPushLefScreen
    extends StatelessWidget {
  CommentsRefreshAlwaysRefreshPullTransitionPushLefScreen({Key? key})
      : super(key: key);

  TextEditingController spacerController = TextEditingController();

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse32x32,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    radius: BorderRadius.circular(16.h),
                                    margin: EdgeInsets.only(bottom: 5.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("ASP.PAZZIA",
                                              style: CustomTextStyles
                                                  .labelLargeNotoSansBlack900),
                                          SizedBox(height: 1.v),
                                          Text("Leo tumetembelewa na ugeni...",
                                              style: theme.textTheme.bodyMedium)
                                        ]))
                              ]))),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
                      controller: spacerController,
                      borderDecoration: TextFormFieldStyleHelper.fillPrimary),
                  Spacer(),
                  Divider(),
                  SizedBox(height: 20.v),
                  _buildProfileRow(context),
                  SizedBox(height: 30.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 10.h, right: 143.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarTitle(
                    text: "Comments",
                    margin: EdgeInsets.only(left: 109.h, top: 2.v, bottom: 2.v))
              ])),
          SizedBox(height: 10.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProfileRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse32x32,
              height: 32.adaptSize,
              width: 32.adaptSize,
              radius: BorderRadius.circular(16.h),
              margin: EdgeInsets.only(top: 3.v, bottom: 2.v)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomTextFormField(
                      controller: commentController,
                      hintText: "Add a comment...",
                      textInputAction: TextInputAction.done,
                      suffix: Padding(
                          padding: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 8.v),
                          child: Text("Post",
                              style: TextStyle(
                                  color: Color(0XFF2D9CDB),
                                  fontSize: 13.fSize,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w600))),
                      suffixConstraints: BoxConstraints(maxHeight: 37.v),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 14.h, vertical: 9.v),
                      borderDecoration: TextFormFieldStyleHelper.outlineGray,
                      filled: false)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
