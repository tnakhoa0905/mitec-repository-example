import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DanhSChNguyNLiUScreen extends StatelessWidget {
  DanhSChNguyNLiUScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

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
                    margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v)),
                centerTitle: true,
                title: AppbarSubtitle(text: "danh sách nguyên liệu"),
                actions: [
                  AppbarSubtitle2(
                      text: "thêm",
                      margin: EdgeInsets.fromLTRB(23.h, 16.v, 23.h, 18.v),
                      onTap: () {
                        onTapThm(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 33.v),
                child: Column(children: [
                  CustomSearchView(
                      controller: searchController,
                      hintText: "tìm kiếm nguyên liệu",
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSearch)),
                      prefixConstraints: BoxConstraints(maxHeight: 48.v),
                      suffix: Padding(
                          padding: EdgeInsets.only(right: 15.h),
                          child: IconButton(
                              onPressed: () {
                                searchController.clear();
                              },
                              icon: Icon(Icons.clear,
                                  color: Colors.grey.shade600)))),
                  SizedBox(height: 16.v),
                  GestureDetector(
                      onTap: () {
                        onTapJenny(context);
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse48x48,
                                          height: 48.adaptSize,
                                          width: 48.adaptSize,
                                          radius: BorderRadius.circular(24.h),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              height: 8.adaptSize,
                                              width: 8.adaptSize,
                                              margin: EdgeInsets.only(
                                                  right: 2.h, bottom: 5.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.green400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.h),
                                                  border: Border.all(
                                                      color: theme.colorScheme
                                                          .onErrorContainer
                                                          .withOpacity(1),
                                                      width: 1.h,
                                                      strokeAlign:
                                                          strokeAlignCenter))))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 5.v, bottom: 3.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("gà ta nguyên con",
                                          style: theme.textTheme.titleSmall),
                                      Text("tạm tính 100k, đơn vị con",
                                          style: theme.textTheme.bodySmall)
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 12.v))
                          ])),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 28.v),
                  GestureDetector(
                      onTap: () {
                        onTapJenny1(context);
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse48x48,
                                          height: 48.adaptSize,
                                          width: 48.adaptSize,
                                          radius: BorderRadius.circular(24.h),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              height: 8.adaptSize,
                                              width: 8.adaptSize,
                                              margin: EdgeInsets.only(
                                                  right: 2.h, bottom: 5.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.green400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.h),
                                                  border: Border.all(
                                                      color: theme.colorScheme
                                                          .onErrorContainer
                                                          .withOpacity(1),
                                                      width: 1.h,
                                                      strokeAlign:
                                                          strokeAlignCenter))))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 5.v, bottom: 3.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("gà ta nguyên con",
                                          style: theme.textTheme.titleSmall),
                                      Text("tạm tính 100k, đơn vị con",
                                          style: theme.textTheme.bodySmall)
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 12.v))
                          ])),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the nguyNLiUScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the nguyNLiUScreen.
  onTapThm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nguyNLiUScreen);
  }

  /// Navigates to the nguyNLiUScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the nguyNLiUScreen.
  onTapJenny(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nguyNLiUScreen);
  }

  /// Navigates to the nguyNLiUScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the nguyNLiUScreen.
  onTapJenny1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nguyNLiUScreen);
  }
}
