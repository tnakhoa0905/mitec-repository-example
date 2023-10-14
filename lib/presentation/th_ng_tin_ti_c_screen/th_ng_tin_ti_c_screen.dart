import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_text_form_field.dart';
import 'package:mitec/presentation/th_m_khuy_n_m_i_bottomsheet/th_m_khuy_n_m_i_bottomsheet.dart';

// ignore_for_file: must_be_immutable
class ThNgTinTiCScreen extends StatelessWidget {
  ThNgTinTiCScreen({Key? key}) : super(key: key);

  TextEditingController additionalnoteController = TextEditingController();

  TextEditingController nameController = TextEditingController();

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
                    svgPath:
                        ImageConstant.imgArrowdownOnsecondarycontainer42x42,
                    margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v)),
                centerTitle: true,
                title: AppbarSubtitle(text: "thông tin tiệc"),
                actions: [
                  AppbarSubtitle2(
                      text: "lưu",
                      margin: EdgeInsets.fromLTRB(24.h, 16.v, 24.h, 18.v))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 23.h, vertical: 9.v),
                    child: Column(children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 15.v),
                          decoration: AppDecoration.outlineBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "nv kinh doanh : ",
                                              style: theme.textTheme.bodyLarge),
                                          TextSpan(
                                              text: "bán nhà",
                                              style: CustomTextStyles
                                                  .titleMediumBold)
                                        ]),
                                        textAlign: TextAlign.left)),
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowrightOnsecondarycontainer,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(top: 2.v))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapSecurity(context);
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 1.h, top: 16.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 13.v),
                              decoration: AppDecoration.outlineBlue.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder11),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 6.h, top: 3.v),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "khách hàng : ",
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              TextSpan(
                                                  text: "lò lựu đạn",
                                                  style: CustomTextStyles
                                                      .titleMediumBold)
                                            ]),
                                            textAlign: TextAlign.left)),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightOnsecondarycontainer,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 3.v))
                                  ]))),
                      Container(
                          margin:
                              EdgeInsets.only(left: 1.h, top: 16.v, right: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 13.v),
                          decoration: AppDecoration.outlineBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 4.v),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "sảnh : ",
                                              style: theme.textTheme.bodyLarge),
                                          TextSpan(
                                              text:
                                                  "5A - Sáng - Mitec Cầu Giấy",
                                              style: CustomTextStyles
                                                  .titleMediumBold)
                                        ]),
                                        textAlign: TextAlign.left)),
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowrightOnsecondarycontainer,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 9.h, top: 4.v, bottom: 3.v))
                              ])),
                      Container(
                          margin:
                              EdgeInsets.only(left: 1.h, top: 16.v, right: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 14.v),
                          decoration: AppDecoration.outlineBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 6.h, top: 2.v),
                                    child: Text("menu : 50 món, 100tr",
                                        style: theme.textTheme.bodyLarge)),
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowrightOnsecondarycontainer,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 2.v))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapSecurity1(context);
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: 1.h, top: 16.v, right: 1.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 13.v),
                              decoration: AppDecoration.outlineBlue.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder11),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 4.v),
                                        child: Text(
                                            "khuyến mãi : bánh kem, rượu",
                                            style: theme.textTheme.bodyLarge)),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightOnsecondarycontainer,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 47.h, top: 4.v, bottom: 3.v))
                                  ]))),
                      SizedBox(height: 16.v),
                      CustomTextFormField(
                          controller: additionalnoteController,
                          hintText: "ghi chú thêm : không có gì",
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(20.h, 16.v, 12.h, 16.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgVolume)),
                          prefixConstraints: BoxConstraints(maxHeight: 56.v),
                          contentPadding: EdgeInsets.only(
                              top: 16.v, right: 30.h, bottom: 16.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineBlueTL12),
                      SizedBox(height: 17.v),
                      CustomTextFormField(
                          controller: nameController,
                          hintText: "Name",
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 15.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineBlueTL8),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the khChHNgScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the khChHNgScreen.
  onTapSecurity(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.khChHNgScreen);
  }

  /// Shows a modal bottom sheet with [ThMKhuyNMIBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapSecurity1(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ThMKhuyNMIBottomsheet(),
        isScrollControlled: true);
  }
}
