import '../b_o_c_o_c_ng_vi_c_screen/widgets/completedtasks_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_bottom_bar.dart';

// ignore: must_be_immutable
class BOCOCNgViCScreen extends StatelessWidget {
  BOCOCNgViCScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 66.h,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.imgArrowdown,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 7.v,
              bottom: 7.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "công việc",
          ),
          actions: [
            AppbarIconbutton2(
              svgPath: ImageConstant.imgSort,
              margin: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 7.v,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              SizedBox(height: 9.v),
              SizedBox(
                height: 200.adaptSize,
                width: 200.adaptSize,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 200.adaptSize,
                        width: 200.adaptSize,
                        child: CircularProgressIndicator(
                          value: 0.5,
                          backgroundColor: theme.colorScheme.onPrimaryContainer,
                          color: appTheme.orange300,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 67.v),
                        child: Text(
                          "65%",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 61.v),
                        child: Text(
                          "hoàn thành",
                          style: CustomTextStyles.bodyLargeBluegray400,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 200.adaptSize,
                        width: 200.adaptSize,
                        child: CircularProgressIndicator(
                          value: 0.5,
                          backgroundColor: theme.colorScheme.onPrimaryContainer,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 11.h,
                  top: 35.v,
                  right: 11.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 7.v),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimaryContainer,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "cần làm",
                        style: CustomTextStyles.bodyMediumOnSecondaryContainer,
                      ),
                    ),
                    Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        left: 21.h,
                        top: 7.v,
                        bottom: 7.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.orange300,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "đang làm",
                        style: CustomTextStyles.bodyMediumOnSecondaryContainer,
                      ),
                    ),
                    Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        left: 22.h,
                        top: 7.v,
                        bottom: 7.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 1.v,
                      ),
                      child: Text(
                        "hoàn thành",
                        style: CustomTextStyles.bodyMediumOnSecondaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "tháng 12",
                  style: CustomTextStyles.titleMediumSemiBold,
                ),
              ),
              SizedBox(height: 14.v),
              Expanded(
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 16.v,
                    );
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CompletedtasksItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
