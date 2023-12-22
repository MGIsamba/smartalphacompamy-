import 'package:flutter/material.dart';
import 'package:mgi_s_application19/presentation/splash_screen/splash_screen.dart';
import 'package:mgi_s_application19/presentation/traners_list_screen/traners_list_screen.dart';
import 'package:mgi_s_application19/presentation/dr_details_screen/dr_details_screen.dart';
import 'package:mgi_s_application19/presentation/dr_list_screen/dr_list_screen.dart';
import 'package:mgi_s_application19/presentation/login_screen/login_screen.dart';
import 'package:mgi_s_application19/presentation/signup_screen/signup_screen.dart';
import 'package:mgi_s_application19/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:mgi_s_application19/presentation/about_us_screen/about_us_screen.dart';
import 'package:mgi_s_application19/presentation/recruit_info_tab_container_screen/recruit_info_tab_container_screen.dart';
import 'package:mgi_s_application19/presentation/chat_screen/chat_screen.dart';
import 'package:mgi_s_application19/presentation/recruit_screen/recruit_screen.dart';
import 'package:mgi_s_application19/presentation/platoon_selector_screen/platoon_selector_screen.dart';
import 'package:mgi_s_application19/presentation/home_screen_refresh_always_refresh_pull_screen/home_screen_refresh_always_refresh_pull_screen.dart';
import 'package:mgi_s_application19/presentation/new_post_transition_push_right_nomenu_screen/new_post_transition_push_right_nomenu_screen.dart';
import 'package:mgi_s_application19/presentation/comments_refresh_always_refresh_pull_transition_push_lef_screen/comments_refresh_always_refresh_pull_transition_push_lef_screen.dart';
import 'package:mgi_s_application19/presentation/post_detail_refresh_pull_nomenu_screen/post_detail_refresh_pull_nomenu_screen.dart';
import 'package:mgi_s_application19/presentation/article_post_screen/article_post_screen.dart';
import 'package:mgi_s_application19/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String tranersListScreen = '/traners_list_screen';

  static const String drDetailsScreen = '/dr_details_screen';

  static const String drListScreen = '/dr_list_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String recruitInfoPage = '/recruit_info_page';

  static const String recruitInfoTabContainerScreen =
      '/recruit_info_tab_container_screen';

  static const String chatScreen = '/chat_screen';

  static const String settignsPage = '/settigns_page';

  static const String recruitScreen = '/recruit_screen';

  static const String platoonSelectorScreen = '/platoon_selector_screen';

  static const String homeScreenRefreshAlwaysRefreshPullScreen =
      '/home_screen_refresh_always_refresh_pull_screen';

  static const String newPostTransitionPushRightNomenuScreen =
      '/new_post_transition_push_right_nomenu_screen';

  static const String commentsRefreshAlwaysRefreshPullTransitionPushLefScreen =
      '/comments_refresh_always_refresh_pull_transition_push_lef_screen';

  static const String postDetailRefreshPullNomenuScreen =
      '/post_detail_refresh_pull_nomenu_screen';

  static const String articlePostScreen = '/article_post_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    tranersListScreen: (context) => TranersListScreen(),
    drDetailsScreen: (context) => DrDetailsScreen(),
    drListScreen: (context) => DrListScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    dashboardContainerScreen: (context) => DashboardContainerScreen(),
    aboutUsScreen: (context) => AboutUsScreen(),
    recruitInfoTabContainerScreen: (context) => RecruitInfoTabContainerScreen(),
    chatScreen: (context) => ChatScreen(),
    recruitScreen: (context) => RecruitScreen(),
    platoonSelectorScreen: (context) => PlatoonSelectorScreen(),
    homeScreenRefreshAlwaysRefreshPullScreen: (context) =>
        HomeScreenRefreshAlwaysRefreshPullScreen(),
    newPostTransitionPushRightNomenuScreen: (context) =>
        NewPostTransitionPushRightNomenuScreen(),
    commentsRefreshAlwaysRefreshPullTransitionPushLefScreen: (context) =>
        CommentsRefreshAlwaysRefreshPullTransitionPushLefScreen(),
    postDetailRefreshPullNomenuScreen: (context) =>
        PostDetailRefreshPullNomenuScreen(),
    articlePostScreen: (context) => ArticlePostScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
