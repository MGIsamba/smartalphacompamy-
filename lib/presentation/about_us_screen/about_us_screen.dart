import '../about_us_screen/widgets/article_item_widget.dart';
import '../about_us_screen/widgets/topics_item_widget.dart';
import '../about_us_screen/widgets/trendingarticle_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_leading_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_subtitle.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';
import 'package:mgi_s_application19/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v),
                child: Column(children: [
                  CustomSearchView(
                      controller: searchController,
                      hintText: "Search articles, news...",
                      contentPadding: EdgeInsets.only(
                          top: 12.v, right: 30.h, bottom: 12.v)),
                  SizedBox(height: 20.v),
                  _buildFiftyNine(context),
                  SizedBox(height: 20.v),
                  _buildSeventySix(context),
                  SizedBox(height: 25.v),
                  _buildSeventyOne(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 21.h, top: 16.v, bottom: 16.v)),
        title: AppbarSubtitle(
            text: "ABOUT Us", margin: EdgeInsets.only(left: 112.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent1,
              margin: EdgeInsets.all(20.h))
        ]);
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Popular Articles", style: CustomTextStyles.titleMediumBlack900),
      SizedBox(height: 13.v),
      Wrap(
          runSpacing: 5.v,
          spacing: 5.h,
          children: List<Widget>.generate(3, (index) => TopicsItemWidget()))
    ]);
  }

  /// Section Widget
  Widget _buildSeventySix(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 2.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("A Coy Organization structure",
                style: CustomTextStyles.titleMediumBlack900),
            Padding(
                padding: EdgeInsets.only(bottom: 3.v),
                child: Text("See all",
                    style: CustomTextStyles.bodySmallInterCyan300))
          ])),
      SizedBox(height: 14.v),
      SizedBox(
          height: 213.v,
          child: ListView.separated(
              padding: EdgeInsets.only(right: 12.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 17.h);
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return TrendingarticleItemWidget(onTapTrendingArticle: () {
                  onTapTrendingArticle(context);
                });
              }))
    ]);
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("A Coy Infrastructures",
            style: CustomTextStyles.titleMediumBlack900),
        Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child:
                Text("See all", style: CustomTextStyles.bodySmallInterCyan300))
      ]),
      SizedBox(height: 13.v),
      ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.v);
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return ArticleItemWidget(onTapArticle: () {
              onTapArticle(context);
            });
          })
    ]);
  }

  /// Navigates to the articlePostScreen when the action is triggered.
  onTapTrendingArticle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.articlePostScreen);
  }

  /// Navigates to the articlePostScreen when the action is triggered.
  onTapArticle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.articlePostScreen);
  }
}
