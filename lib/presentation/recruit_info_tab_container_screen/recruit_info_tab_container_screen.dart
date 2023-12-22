import 'package:flutter/material.dart';
import 'package:mgi_s_application19/core/app_export.dart';
import 'package:mgi_s_application19/presentation/dashboard_page/dashboard_page.dart';
import 'package:mgi_s_application19/presentation/recruit_info_page/recruit_info_page.dart';
import 'package:mgi_s_application19/presentation/settigns_page/settigns_page.dart';
import 'package:mgi_s_application19/widgets/custom_bottom_bar.dart';

class RecruitInfoTabContainerScreen extends StatefulWidget {
  const RecruitInfoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RecruitInfoTabContainerScreenState createState() =>
      RecruitInfoTabContainerScreenState();
}

class RecruitInfoTabContainerScreenState
    extends State<RecruitInfoTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 62.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildRecruitInfo(context),
                      SizedBox(height: 3.v),
                      _buildTabview(context),
                      SizedBox(
                        height: 540.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            RecruitInfoPage(),
                            RecruitInfoPage(),
                            RecruitInfoPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecruitInfo(BuildContext context) {
    return SizedBox(
      height: 111.v,
      width: 334.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgComponent1Primary,
            height: 16.v,
            width: 4.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 7.v),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDownBlack9001,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 57.v),
                Text(
                  "Recruit Information",
                  style: theme.textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 46.v,
      width: 335.h,
      decoration: BoxDecoration(
        color: appTheme.blueGray50,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray700,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.cyan300,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "All",
            ),
          ),
          Tab(
            child: Text(
              "Platoon",
            ),
          ),
          Tab(
            child: Text(
              "Company",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Messages:
        return "/";
      case BottomBarEnum.Dailyreport:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.settignsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.settignsPage:
        return SettignsPage();
      default:
        return DefaultWidget();
    }
  }
}
