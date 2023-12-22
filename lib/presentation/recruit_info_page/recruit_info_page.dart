import '../recruit_info_page/widgets/userprofile2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/custom_search_view.dart';

class RecruitInfoPage extends StatefulWidget {
  const RecruitInfoPage({Key? key}) : super(key: key);

  @override
  RecruitInfoPageState createState() => RecruitInfoPageState();
}

// ignore_for_file: must_be_immutable
class RecruitInfoPageState extends State<RecruitInfoPage>
    with AutomaticKeepAliveClientMixin<RecruitInfoPage> {
  TextEditingController searchController = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 13.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.h),
                      child: Column(children: [
                        _buildSearchView(context),
                        SizedBox(height: 17.v),
                        _buildPopularProduct(context),
                        SizedBox(height: 13.v),
                        _buildUserProfile(context)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildSearchView(BuildContext context) {
    return Column(children: [
      CustomSearchView(
          controller: searchController, hintText: "Search Recruit..."),
      SizedBox(height: 25.v),
      SizedBox(
          height: 116.v,
          width: 335.h,
          child: Stack(alignment: Alignment.centerLeft, children: [
            CustomImageView(
                imagePath: ImageConstant.imgRectangle6116x335,
                height: 116.v,
                width: 335.h,
                radius: BorderRadius.circular(10.h),
                alignment: Alignment.center),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Recruits Events",
                                  style: CustomTextStyles.headlineSmallGray50)),
                          SizedBox(height: 30.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtMoreCounter(context);
                              },
                              child: Container(
                                  width: 150.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 17.h, vertical: 7.v),
                                  decoration: AppDecoration.fillCyan.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                                  child: Text("More ....",
                                      style:
                                          CustomTextStyles.labelLargePrimary)))
                        ])))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildPopularProduct(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Recruits (929)", style: CustomTextStyles.titleMediumBlack900),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Text("See all",
                  style: CustomTextStyles.bodySmallInterCyan300))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 11.v);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Userprofile2ItemWidget();
        });
  }

  /// Navigates to the articlePostScreen when the action is triggered.
  onTapTxtMoreCounter(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.articlePostScreen);
  }
}
