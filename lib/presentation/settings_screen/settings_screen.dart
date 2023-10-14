import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_circleimage.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_elevated_button.dart';
import 'package:mitec/widgets/custom_icon_button.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController accountsetupController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: 327.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 61.v,
                  right: 24.h,
                ),
                padding: EdgeInsets.symmetric(vertical: 13.v),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder11,
                ),
                child: CustomAppBar(
                  height: 44.v,
                  leadingWidth: 93.h,
                  leading: AppbarCircleimage(
                    imagePath: ImageConstant.imgEllipse10,
                    margin: EdgeInsets.only(left: 49.h),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                      children: [
                        AppbarSubtitle1(
                          text: "lò bát quái",
                          margin: EdgeInsets.only(right: 22.h),
                        ),
                        SizedBox(height: 1.v),
                        AppbarSubtitle4(
                          text: "lobatquai@gmail.com",
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    Container(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.symmetric(
                        horizontal: 47.h,
                        vertical: 2.v,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillGray,
                            alignment: Alignment.center,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgFrame,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 28.h,
                                bottom: 28.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 3.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillRed.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder6,
                              ),
                              child: Text(
                                "3",
                                style: theme.textTheme.labelSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 40.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTextFormField(
                      controller: accountsetupController,
                      margin: EdgeInsets.only(right: 1.h),
                      hintText: "Thiết lập tài khoản",
                      hintStyle: CustomTextStyles.bodyLargeInterBluegray800,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(23.h, 23.v, 7.h, 23.v),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgFrameBlueGray800,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 70.v,
                      ),
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 26.v, 23.h, 25.v),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgEdit,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 70.v,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 24.v),
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    ),
                    SizedBox(height: 12.v),
                    Container(
                      padding: EdgeInsets.all(24.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder11,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgUpload,
                                        height: 17.v,
                                        width: 18.h,
                                        margin: EdgeInsets.only(bottom: 4.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Text(
                                          "Ngôn ngữ",
                                          style: CustomTextStyles
                                              .bodyLargeInterBluegray800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 17.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant
                                          .imgFrameBlueGray80022x22,
                                      height: 22.adaptSize,
                                      width: 22.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 24.h),
                                      child: Text(
                                        "Báo cáo",
                                        style: CustomTextStyles
                                            .bodyLargeInterBluegray800,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 21.v,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 21.v,
                                        width: 20.h,
                                        margin: EdgeInsets.only(bottom: 1.v),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgVector,
                                              height: 1.v,
                                              width: 5.h,
                                              alignment: Alignment.center,
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant.imgStar1,
                                              height: 21.v,
                                              width: 20.h,
                                              radius: BorderRadius.circular(
                                                1.h,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 23.h),
                                        child: Text(
                                          "Đánh giá",
                                          style: CustomTextStyles
                                              .bodyLargeInterBluegray800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 17.v,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowup,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(top: 1.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Text(
                                          "Phiên bản",
                                          style: CustomTextStyles
                                              .bodyLargeInterBluegray800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgGroup3162,
                            height: 140.v,
                            width: 14.h,
                            margin: EdgeInsets.only(top: 5.v),
                          ),
                        ],
                      ),
                    ),
                    CustomElevatedButton(
                      width: 135.h,
                      text: "Đăng xuất",
                      margin: EdgeInsets.only(
                        top: 40.v,
                        right: 85.h,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
