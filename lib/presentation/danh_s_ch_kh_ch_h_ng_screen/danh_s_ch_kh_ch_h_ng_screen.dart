import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DanhSChKhChHNgScreen extends StatelessWidget {
  DanhSChKhChHNgScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle(text: "danh sách khách hàng"),
                actions: [
                  AppbarSubtitle2(
                      text: "thêm",
                      margin: EdgeInsets.fromLTRB(21.h, 16.v, 23.h, 18.v),
                      onTap: () {
                        onTapThm(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 33.v),
                child: Column(children: [
                  CustomSearchView(
                      controller: searchController,
                      hintText: "tìm kiếm theo tên, sđt",
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
                                    left: 16.h, top: 5.v, bottom: 4.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lò cám lợn",
                                          style: theme.textTheme.titleSmall),
                                      Text("0901020304",
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
                  Padding(
                      padding: EdgeInsets.only(top: 15.v, right: 4.h),
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
                                    left: 16.h, top: 5.v, bottom: 4.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lò cám lợn",
                                          style: theme.textTheme.titleSmall),
                                      Text("0901020304",
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
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, top: 15.v),
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
                                    left: 16.h, top: 5.v, bottom: 4.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lò cám lợn",
                                          style: theme.textTheme.titleSmall),
                                      Text("0901020304",
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

  /// Navigates to the khChHNgScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the khChHNgScreen.
  onTapThm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.khChHNgScreen);
  }

  /// Navigates to the khChHNgScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the khChHNgScreen.
  onTapJenny(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.khChHNgScreen);
  }
}
