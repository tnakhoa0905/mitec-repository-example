import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class KhChHNgScreen extends StatelessWidget {
  KhChHNgScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController llunController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController cugiyhController = TextEditingController();

  TextEditingController khchhngviController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
            text: "khách hàng",
          ),
          actions: [
            AppbarSubtitle2(
              text: "lưu",
              margin: EdgeInsets.fromLTRB(30.h, 16.v, 30.h, 18.v),
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                    children: [
                      Container(
                        height: 89.adaptSize,
                        width: 89.adaptSize,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 1.v,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgProlile89x89,
                              height: 89.adaptSize,
                              width: 89.adaptSize,
                              radius: BorderRadius.circular(
                                44.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 2.v,
                                ),
                                decoration: AppDecoration.fillBlueA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder44,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 66.v),
                                    CustomImageView(
                                      svgPath: ImageConstant
                                          .imgCameraOnerrorcontainer,
                                      height: 12.adaptSize,
                                      width: 12.adaptSize,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 96.v,
                        width: 229.h,
                        margin: EdgeInsets.only(left: 9.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 5.h),
                                child: Text(
                                  "xóa",
                                  style: CustomTextStyles.titleSmallRed300,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "họ và tên",
                                    style:
                                        CustomTextStyles.titleSmallBluegray400,
                                  ),
                                  SizedBox(height: 11.v),
                                  CustomTextFormField(
                                    controller: llunController,
                                    hintText: "lò lựu đạn",
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 13.h,
                                      vertical: 18.v,
                                    ),
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 19.v,
                  ),
                  child: Text(
                    "Email",
                    style: CustomTextStyles.titleSmallBluegray400,
                  ),
                ),
                CustomTextFormField(
                  controller: emailController,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    top: 12.v,
                  ),
                  hintText: "albart.ainstain@gmail.com",
                  hintStyle: CustomTextStyles.titleMedium16,
                  textInputType: TextInputType.emailAddress,
                  borderDecoration: TextFormFieldStyleHelper.outlineBlueTL16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 17.v,
                  ),
                  child: Text(
                    "số điện thoại",
                    style: CustomTextStyles.titleSmallBluegray400,
                  ),
                ),
                CustomTextFormField(
                  controller: mobileNoController,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 11.v,
                  ),
                  hintText: "0901020304",
                  hintStyle: CustomTextStyles.titleMedium16,
                  textInputType: TextInputType.phone,
                  borderDecoration: TextFormFieldStyleHelper.outlineBlueTL16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 16.v,
                  ),
                  child: Text(
                    "địa chỉ",
                    style: CustomTextStyles.titleSmallBluegray400,
                  ),
                ),
                CustomTextFormField(
                  controller: cugiyhController,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 12.v,
                  ),
                  hintText: "123 câu giấy hà nội",
                  hintStyle: CustomTextStyles.titleMedium16,
                  borderDecoration: TextFormFieldStyleHelper.outlineBlueTL16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 13.v,
                  ),
                  child: Text(
                    "ghi chú",
                    style: CustomTextStyles.titleSmallBluegray400,
                  ),
                ),
                CustomTextFormField(
                  controller: khchhngviController,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 11.v,
                    bottom: 5.v,
                  ),
                  hintText: "khách hàng vãi lol",
                  hintStyle: CustomTextStyles.titleMedium16,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.outlineBlueTL16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
