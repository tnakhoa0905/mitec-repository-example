import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/custom_checkbox_button.dart';
import 'package:mitec/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MNNScreen extends StatelessWidget {
  MNNScreen({Key? key}) : super(key: key);

  bool trngfour = false;

  bool gtwo = false;

  bool chinatwo = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: 331.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFoodpicture,
                                height: 331.v,
                                width: 375.h,
                                alignment: Alignment.center),
                            CustomIconButton(
                                height: 56.adaptSize,
                                width: 56.adaptSize,
                                margin: EdgeInsets.only(left: 24.h, top: 16.v),
                                padding: EdgeInsets.all(16.h),
                                decoration:
                                    IconButtonStyleHelper.fillOnErrorContainer,
                                alignment: Alignment.topLeft,
                                onTap: () {
                                  onTapBtnArrowleftone(context);
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowleftOnerrorcontainer))
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 28.v),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.h, top: 20.v),
                                    child: Text("món gà hấp thạch tín",
                                        style: CustomTextStyles
                                            .titleMediumInterBluegray700)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.h, top: 12.v),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: Text("Food",
                                                  style: CustomTextStyles
                                                      .titleSmallInterBluegray30001)),
                                          Container(
                                              height: 5.adaptSize,
                                              width: 5.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 8.h,
                                                  top: 6.v,
                                                  bottom: 8.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray30001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.h))),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("60 phút",
                                                  style: CustomTextStyles
                                                      .titleSmallInterBluegray30001))
                                        ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.h, top: 17.v),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage5,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          radius: BorderRadius.circular(16.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.h, top: 7.v, bottom: 5.v),
                                          child: Text("bếp trưởng",
                                              style: CustomTextStyles
                                                  .titleSmallInterBluegray700)),
                                      Spacer(),
                                      CustomIconButton(
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          padding: EdgeInsets.all(6.h),
                                          decoration:
                                              IconButtonStyleHelper.fillGreenA,
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgLocation)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.h, top: 8.v, bottom: 4.v),
                                          child: Text("271 lần đặt",
                                              style: CustomTextStyles
                                                  .titleSmallInterBluegray700))
                                    ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 16.v),
                                        child: Divider(
                                            color: appTheme.blueGray100,
                                            indent: 10.h,
                                            endIndent: 10.h))),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.h, top: 18.v),
                                    child: Text("mô tả",
                                        style: CustomTextStyles
                                            .titleMediumInterBluegray700)),
                                Container(
                                    width: 175.h,
                                    margin:
                                        EdgeInsets.only(left: 10.h, top: 14.v),
                                    child: Text(
                                        "dfg dfgdf dfgdfgfsdf sf\nsdfsd\nfsd",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleSmallInterBluegray30001
                                            .copyWith(height: 1.67))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 19.v),
                                        child: Divider(
                                            color: appTheme.blueGray100,
                                            indent: 10.h,
                                            endIndent: 10.h))),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.h, top: 20.v),
                                    child: Text("nguyên liệu",
                                        style: CustomTextStyles
                                            .titleMediumInterBluegray700)),
                                CustomCheckboxButton(
                                    text: "trứng : 4",
                                    value: trngfour,
                                    margin:
                                        EdgeInsets.only(left: 10.h, top: 17.v),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      trngfour = value;
                                    }),
                                CustomCheckboxButton(
                                    text: "gì đó : 2",
                                    value: gtwo,
                                    margin:
                                        EdgeInsets.only(left: 10.h, top: 16.v),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      gtwo = value;
                                    }),
                                CustomCheckboxButton(
                                    text: "chi đó nữa : 2",
                                    value: chinatwo,
                                    margin:
                                        EdgeInsets.only(left: 10.h, top: 16.v),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.v),
                                    onChange: (value) {
                                      chinatwo = value;
                                    })
                              ])))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
