import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/custom_icon_button.dart';

class ChNNgYBottomsheet extends StatelessWidget {
  const ChNNgYBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.customBorderTL30),
        child: Container(
            height: 393.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            decoration: AppDecoration.fillOnErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      height: 4.v,
                      width: 42.h,
                      margin: EdgeInsets.only(top: 16.v),
                      decoration: BoxDecoration(
                          color: appTheme.blue50,
                          borderRadius: BorderRadius.circular(2.h)))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 28.v),
                      decoration: AppDecoration.outlineBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 27.v,
                                width: 287.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("12 Sep 2021",
                                              style: CustomTextStyles
                                                  .titleMediumPrimary)),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 3.v),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmarkOnsecondarycontainer,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize)
                                                  ])))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 3.h, top: 25.v, right: 4.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("M",
                                          style: CustomTextStyles
                                              .labelLargeBluegray400),
                                      Padding(
                                          padding: EdgeInsets.only(left: 36.h),
                                          child: Text("T",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 36.h),
                                          child: Text("W",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 35.h),
                                          child: Text("T",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 39.h),
                                          child: Text("F",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 38.h),
                                          child: Text("S",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 38.h),
                                          child: Text("S",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(top: 19.v, right: 5.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("26",
                                          style: CustomTextStyles
                                              .labelLargeBluegray400),
                                      Padding(
                                          padding: EdgeInsets.only(left: 31.h),
                                          child: Text("27",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.h),
                                          child: Text("28",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.h),
                                          child: Text("29",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.h),
                                          child: Text("30",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 31.h),
                                          child: Text("31",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray400)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 37.h),
                                          child: Text("1",
                                              style:
                                                  theme.textTheme.labelLarge))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 5.h, top: 14.v, right: 3.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 6.v, bottom: 5.v),
                                          child: Text("2",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Container(
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          margin: EdgeInsets.only(left: 26.h),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgContrast,
                                                    height: 32.adaptSize,
                                                    width: 32.adaptSize,
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text("3",
                                                        style: CustomTextStyles
                                                            .labelLargePrimary))
                                              ])),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 26.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("4",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 37.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("5",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 37.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("6",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 37.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("7",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 38.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("8",
                                              style:
                                                  theme.textTheme.labelLarge))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h, top: 8.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 6.v, bottom: 5.v),
                                          child: Text("9",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 35.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("10",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 34.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("11",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Container(
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          margin: EdgeInsets.only(left: 25.h),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgContrast,
                                                    height: 32.adaptSize,
                                                    width: 32.adaptSize,
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text("12",
                                                        style: CustomTextStyles
                                                            .labelLargePrimary))
                                              ])),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 24.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("13",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 33.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("14",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 33.h,
                                              top: 6.v,
                                              bottom: 5.v),
                                          child: Text("15",
                                              style:
                                                  theme.textTheme.labelLarge))
                                    ])),
                            SizedBox(height: 15.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("16", style: theme.textTheme.labelLarge),
                                  Padding(
                                      padding: EdgeInsets.only(left: 33.h),
                                      child: Text("17",
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 34.h),
                                      child: Text("18",
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 33.h),
                                      child: Text("19",
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 31.h),
                                      child: Text("20",
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 32.h),
                                      child: Text("21",
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 31.h),
                                      child: Text("22",
                                          style: theme.textTheme.labelLarge))
                                ]),
                            SizedBox(height: 14.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 6.v, bottom: 5.v),
                                      child: Text("23",
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.h, top: 6.v, bottom: 5.v),
                                      child: Text("24",
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.h, top: 6.v, bottom: 5.v),
                                      child: Text("25",
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.h, top: 6.v, bottom: 5.v),
                                      child: Text("26",
                                          style: theme.textTheme.labelLarge)),
                                  Container(
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      margin: EdgeInsets.only(left: 22.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgContrast,
                                                height: 32.adaptSize,
                                                width: 32.adaptSize,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("27",
                                                    style: CustomTextStyles
                                                        .labelLargePrimary))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 22.h, top: 6.v, bottom: 5.v),
                                      child: Text("28",
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.h, top: 6.v, bottom: 5.v),
                                      child: Text("29",
                                          style: theme.textTheme.labelLarge))
                                ]),
                            SizedBox(height: 14.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("30", style: theme.textTheme.labelLarge),
                                  Padding(
                                      padding: EdgeInsets.only(left: 35.h),
                                      child: Text("1",
                                          style: CustomTextStyles
                                              .labelLargeBluegray400)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 39.h),
                                      child: Text("2",
                                          style: CustomTextStyles
                                              .labelLargeBluegray400)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 38.h),
                                      child: Text("3",
                                          style: CustomTextStyles
                                              .labelLargeBluegray400)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 38.h),
                                      child: Text("4",
                                          style: CustomTextStyles
                                              .labelLargeBluegray400)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 37.h),
                                      child: Text("5",
                                          style: CustomTextStyles
                                              .labelLargeBluegray400)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 37.h),
                                      child: Text("6",
                                          style: CustomTextStyles
                                              .labelLargeBluegray400))
                                ])
                          ]))),
              CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  margin: EdgeInsets.only(bottom: 8.v),
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.outlineBlueTL211,
                  alignment: Alignment.bottomCenter,
                  onTap: () {
                    onTapBtnCloseone(context);
                  },
                  child: CustomImageView(svgPath: ImageConstant.imgClose))
            ])));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnCloseone(BuildContext context) {
    Navigator.pop(context);
  }
}
