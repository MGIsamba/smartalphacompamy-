import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_title.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_title_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';
import 'package:mgi_s_application19/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PostDetailRefreshPullNomenuScreen extends StatelessWidget {
  PostDetailRefreshPullNomenuScreen({Key? key}) : super(key: key);

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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse,
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                radius: BorderRadius.circular(18.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 9.h, top: 12.v, bottom: 5.v),
                                child: Text("ASP.PAZZIA",
                                    style: CustomTextStyles
                                        .labelLargeNotoSansBlack900))
                          ])),
                      SizedBox(height: 15.v),
                      _buildProfilePicThree(context),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(children: [
                            _buildShareActionShare(context,
                                pressedState:
                                    ImageConstant.imgDefaultActionRemote,
                                defaultState:
                                    ImageConstant.imgActiveActionRemote),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: _buildShareActionShare(context,
                                    pressedState: ImageConstant.imgSave,
                                    defaultState:
                                        ImageConstant.imgSaveBlack900))
                          ])),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text("Refresher course.",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 27.v),
                      Divider(),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse1,
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                radius: BorderRadius.circular(16.h),
                                margin: EdgeInsets.only(bottom: 4.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("ACP.NSEMWA",
                                          style: CustomTextStyles
                                              .labelLargeNotoSansBlack900),
                                      Text("Safi sana makamanda.",
                                          style: theme.textTheme.bodyMedium)
                                    ]))
                          ]))
                    ])),
            bottomNavigationBar: _buildCommentBoxLayer(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 90.v,
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.only(top: 53.v),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(left: 10.h, right: 169.h),
                  child: Row(children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgArrowLeft,
                        onTap: () {
                          onTapArrowLeft(context);
                        }),
                    AppbarTitle(
                        text: "Post",
                        margin:
                            EdgeInsets.only(left: 134.h, top: 2.v, bottom: 2.v))
                  ])),
              SizedBox(height: 10.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(width: double.maxFinite, child: Divider()))
            ])),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildProfilePicThree(BuildContext context) {
    return SizedBox(
        height: 375.adaptSize,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage375x375,
              height: 375.adaptSize,
              width: 375.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 375.adaptSize,
              width: 375.adaptSize,
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildCommentBoxLayer(BuildContext context) {
    return SizedBox(
        height: 114.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 106.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: theme.colorScheme.primary))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Divider(),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10.h, 20.v, 15.h, 42.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse32x32,
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  radius: BorderRadius.circular(16.h),
                                  margin:
                                      EdgeInsets.only(top: 3.v, bottom: 2.v)),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: CustomTextFormField(
                                          controller: commentController,
                                          hintText: "Add a comment...",
                                          textInputAction: TextInputAction.done,
                                          suffix: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  30.h, 10.v, 16.h, 8.v),
                                              child: Text("Post",
                                                  style: TextStyle(
                                                      color: Color(0XFF2D9CDB),
                                                      fontSize: 13.fSize,
                                                      fontFamily: 'Noto Sans',
                                                      fontWeight:
                                                          FontWeight.w600))),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 37.v),
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 14.h, vertical: 9.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineGray,
                                          filled: false)))
                            ]))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildShareActionShare(
    BuildContext context, {
    required String pressedState,
    required String defaultState,
  }) {
    return SizedBox(
        height: 30.adaptSize,
        width: 30.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: pressedState,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: defaultState,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
