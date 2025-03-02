
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:talkiam/View/Home/Notification/all.dart';
import 'package:talkiam/View/Home/Widget/appbar.dart';
import 'package:talkiam/core/utils/Themes/app_color.dart';
import 'package:talkiam/core/utils/Themes/app_images.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              text: "Notifications",
              image: AppImages.dehaze,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primaryColor2,
                      AppColors.primaryColor,
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                      3), // Padding to make gradient border effect
                  //Use Package.......(ButtonsTabBar)
                  child: ButtonsTabBar(
                    width: 22.w,
                    height: 6.h,
                    radius: 20,
                    contentCenter: true,
                    backgroundColor: Colors.white,
                    unselectedBackgroundColor: Colors.transparent,
                    unselectedLabelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    tabs: [
                      Tab(text: "Message"),
                      Tab(text: "All"),
                      Tab(text: "Unread"),
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: TabBarView(
                children: [
                  Message(),
                  All(),
                  Unread(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
