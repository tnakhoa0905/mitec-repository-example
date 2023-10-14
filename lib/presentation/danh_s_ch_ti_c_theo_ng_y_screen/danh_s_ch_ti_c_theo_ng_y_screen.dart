import '../danh_s_ch_ti_c_theo_ng_y_screen/widgets/userinfo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_elevated_button.dart';
import 'package:mitec/presentation/th_m_khuy_n_m_i_bottomsheet/th_m_khuy_n_m_i_bottomsheet.dart';

class DanhSChTiCTheoNgYScreen extends StatelessWidget {
  const DanhSChTiCTheoNgYScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 66.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowdown,
                    margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v)),
                centerTitle: true,
                title: AppbarSubtitle(text: "danh sách tiệc theo ngày"),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgSort,
                      margin: EdgeInsets.fromLTRB(6.h, 7.v, 24.h, 7.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 9.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapSecurity(context);
                                },
                                child: Container(
                                    width: 164.h,
                                    padding: EdgeInsets.all(6.h),
                                    decoration: AppDecoration.outlineBlue
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVolume,
                                              height: 18.v,
                                              width: 17.h,
                                              margin: EdgeInsets.only(
                                                  top: 12.v, bottom: 10.v)),
                                          Container(
                                              width: 81.h,
                                              margin:
                                                  EdgeInsets.only(left: 18.h),
                                              child: Text("ngày : 12/12/2022",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyLarge)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightOnsecondarycontainer,
                                              height: 20.v,
                                              width: 10.h,
                                              margin: EdgeInsets.only(
                                                  left: 21.h,
                                                  top: 11.v,
                                                  bottom: 10.v))
                                        ]))),
                            GestureDetector(
                                onTap: () {
                                  onTapSecurity1(context);
                                },
                                child: Container(
                                    width: 164.h,
                                    margin: EdgeInsets.only(left: 5.h),
                                    padding: EdgeInsets.all(6.h),
                                    decoration: AppDecoration.outlineBlue
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVolume,
                                              height: 18.v,
                                              width: 17.h,
                                              margin: EdgeInsets.only(
                                                  top: 12.v, bottom: 11.v)),
                                          Container(
                                              width: 70.h,
                                              margin: EdgeInsets.only(
                                                  left: 18.h, bottom: 4.v),
                                              child: Text("sảnh A1 - Mitec",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyLarge)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightOnsecondarycontainer,
                                              height: 20.v,
                                              width: 10.h,
                                              margin: EdgeInsets.only(
                                                  left: 33.h,
                                                  top: 11.v,
                                                  bottom: 10.v))
                                        ])))
                          ])),
                  Expanded(
                      child: Padding(
                          padding:
                              EdgeInsets.only(left: 6.h, top: 16.v, right: 3.h),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 16.v);
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return UserinfoItemWidget(onTapUserinfo: () {
                                  onTapUserinfo(context);
                                });
                              })))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                height: 54.v,
                text: "đặt tiệc mới",
                margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 20.v),
                buttonStyle: CustomButtonStyles.none,
                buttonTextStyle:
                    CustomTextStyles.titleMediumOnErrorContainer16)));
  }

  /// Navigates to the thNgTinTiCScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the thNgTinTiCScreen.
  onTapUserinfo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.thNgTinTiCScreen);
  }

  /// Shows a modal bottom sheet with [ThMKhuyNMIBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapSecurity(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ThMKhuyNMIBottomsheet(),
        isScrollControlled: true);
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
