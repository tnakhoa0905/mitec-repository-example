import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_bottom_bar.dart';
import 'package:mitec/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class CNhNScreen extends StatelessWidget {
  CNhNScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 270.v,
                width: 305.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 16.v,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgGroup1000000790,
                      height: 94.v,
                      width: 263.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 27.v),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 80.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 100.adaptSize,
                              width: 100.adaptSize,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgProlile100x100,
                                    height: 100.adaptSize,
                                    width: 100.adaptSize,
                                    radius: BorderRadius.circular(
                                      50.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 100.adaptSize,
                                      width: 100.adaptSize,
                                      decoration: BoxDecoration(
                                        color:
                                            appTheme.blueA400.withOpacity(0.4),
                                        borderRadius: BorderRadius.circular(
                                          50.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Text(
                              "lò bát quái",
                              style: theme.textTheme.titleLarge,
                            ),
                            Text(
                              "phòng kinh doanh",
                              style: CustomTextStyles.bodySmall12,
                            ),
                            SizedBox(height: 6.v),
                            CustomOutlinedButton(
                              height: 28.v,
                              width: 112.h,
                              text: "sửa thông tin",
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle: CustomTextStyles
                                  .bodySmallOnSecondaryContainer12,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomAppBar(
                      height: 42.v,
                      leadingWidth: 66.h,
                      leading: AppbarIconbutton1(
                        svgPath: ImageConstant.imgArrowdown,
                        margin: EdgeInsets.only(left: 24.h),
                      ),
                      centerTitle: true,
                      title: AppbarSubtitle(
                        text: "cá nhân",
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 43.h,
                        top: 28.v,
                        right: 58.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCheckmark,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Text(
                                "5",
                                style: theme.textTheme.titleLarge,
                              ),
                              Text(
                                "việc cần làm",
                                style: CustomTextStyles.bodySmall12,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCheckmark,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 23.h),
                                child: Text(
                                  "25",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Text(
                                "việc đã xong",
                                style: CustomTextStyles.bodySmall12,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 14.v,
                      ),
                      decoration: AppDecoration.outlineBlue.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder11,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              "khách đặt tiệc",
                              style: CustomTextStyles.titleMedium16,
                            ),
                          ),
                          CustomImageView(
                            svgPath:
                                ImageConstant.imgArrowrightOnsecondarycontainer,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                              top: 2.v,
                              bottom: 3.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 14.v,
                      ),
                      decoration: AppDecoration.outlineBlue.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder11,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "các công việc",
                              style: CustomTextStyles.titleMedium16,
                            ),
                          ),
                          CustomImageView(
                            svgPath:
                                ImageConstant.imgArrowrightOnsecondarycontainer,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 3.v),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 15.v,
                      ),
                      decoration: AppDecoration.outlineBlue.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder11,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "cấu hình",
                            style: CustomTextStyles.titleMedium16,
                          ),
                          CustomImageView(
                            svgPath:
                                ImageConstant.imgArrowrightOnsecondarycontainer,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 15.v,
                      ),
                      decoration: AppDecoration.outlineBlue.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder11,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "thoát",
                            style: CustomTextStyles.titleMedium16,
                          ),
                          CustomImageView(
                            svgPath:
                                ImageConstant.imgArrowrightOnsecondarycontainer,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                          ),
                        ],
                      ),
                    ),
                  ],
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
