import '../article_post_screen/widgets/slidecontainer_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/widgets/app_bar/appbar_title.dart';
import 'package:mgi_s_application19/widgets/app_bar/custom_app_bar.dart';

class ArticlePostScreen extends StatelessWidget {
  const ArticlePostScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 28.v),
          child: Column(
            children: [
              _buildSlideContainer(context),
              SizedBox(height: 28.v),
              Container(
                width: 315.h,
                margin: EdgeInsets.symmetric(horizontal: 30.h),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur. Massa pretium at hac nulla. Nulla eget felis dignissim duis. Aliquam in augue eget nunc. In cursus egestas facilisis sit. Ut facilisis fermentum adipiscing facilisi suspendisse a vestibulum. Blandit enim nibh sit rhoncus massa eget. Velit sed bibendum eros justo elementum ac. Aliquet neque nec nunc a donec imperdiet. Sit bibendum eu massa ac bibendum. Sem tempor eu in laoreet pretium ut magnis. Pulvinar pharetra malesuada non eget facilisis ipsum vulputate. Et penatibus suspendisse quis lectus vitae a odio. Tincidunt quis turpis amet cras posuere faucibus.\nEgestas potenti parturient eget eu quis sed scelerisque quis. Dictum egestas erat tincidunt quis montes. Vitae aliquam aliquam sagittis imperdiet. Massa mi et tristique tortor. Nisi in eget eget tortor eget ipsum varius. Erat non velit accumsan natoque amet vestibulum pellentesque eget nisl. Id vitae ac egestas in. Curabitur elementum.",
                  maxLines: 20,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.54,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "Written by ; ASP PAZZIA - OC A COY",
                    style: CustomTextStyles.labelLargeNotoSansBlack900Bold,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 90.v,
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: 54.v),
        child: Column(
          children: [
            AppbarTitle(
              text: "Name of an Article",
              margin: EdgeInsets.only(
                left: 116.h,
                right: 113.h,
              ),
            ),
            SizedBox(height: 13.v),
            SizedBox(
              width: double.maxFinite,
              child: Divider(),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildSlideContainer(BuildContext context) {
    return SizedBox(
      height: 132.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 14.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 14.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return SlidecontainerItemWidget();
        },
      ),
    );
  }
}
