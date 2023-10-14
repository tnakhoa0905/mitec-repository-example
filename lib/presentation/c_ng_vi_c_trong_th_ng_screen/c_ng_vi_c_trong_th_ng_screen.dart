import '../c_ng_vi_c_trong_th_ng_screen/widgets/listeleventext_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_bottom_bar.dart';
import 'package:mitec/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CNgViCTrongThNgScreen extends StatelessWidget {
  CNgViCTrongThNgScreen({Key? key})
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
            text: "công việc trong tháng",
          ),
          actions: [
            AppbarIconbutton2(
              svgPath: ImageConstant.imgEditOnsecondarycontainer,
              margin: EdgeInsets.fromLTRB(22.h, 7.v, 24.h, 7.v),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 33.v,
                  right: 24.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "tháng 12  ✍",
                            style: CustomTextStyles
                                .headlineSmallOnSecondaryContainer,
                          ),
                          Text(
                            "tổng 25 việc trong tháng này",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    CustomIconButton(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      margin: EdgeInsets.only(bottom: 18.v),
                      padding: EdgeInsets.all(11.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCalendar,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 143.v,
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 25.v,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 16.h,
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListeleventextItemWidget();
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 30.v,
                  right: 24.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 28.v,
                ),
                decoration: AppDecoration.outlineBlue.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
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
                            child: Text(
                              "12 Sep 2021",
                              style: CustomTextStyles.titleMediumPrimary,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant
                                        .imgCheckmarkOnsecondarycontainer,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 3.h,
                        top: 25.v,
                        right: 4.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "M",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "T",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "W",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "T",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "F",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "S",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "S",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 19.v,
                        right: 5.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "26",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 31.h),
                            child: Text(
                              "27",
                              style: CustomTextStyles.labelLargeBluegray400,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30.h),
                            child: Text(
                              "28",
                              style: CustomTextStyles.labelLargeBluegray400,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30.h),
                            child: Text(
                              "29",
                              style: CustomTextStyles.labelLargeBluegray400,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30.h),
                            child: Text(
                              "30",
                              style: CustomTextStyles.labelLargeBluegray400,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 31.h),
                            child: Text(
                              "31",
                              style: CustomTextStyles.labelLargeBluegray400,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 37.h),
                            child: Text(
                              "1",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 14.v,
                        right: 3.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "2",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Container(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            margin: EdgeInsets.only(left: 26.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgContrast,
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "3",
                                    style: CustomTextStyles.labelLargePrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 26.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "4",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 37.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "5",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 37.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "6",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 37.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "7",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 38.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "8",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 8.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "9",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "10",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 34.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "11",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Container(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            margin: EdgeInsets.only(left: 25.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgContrast,
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "12",
                                    style: CustomTextStyles.labelLargePrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 24.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "13",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 33.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "14",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 33.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "15",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 3.h,
                        top: 15.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "16",
                            style: theme.textTheme.labelLarge,
                          ),
                          Text(
                            "17",
                            style: theme.textTheme.labelLarge,
                          ),
                          Text(
                            "18",
                            style: theme.textTheme.labelLarge,
                          ),
                          Text(
                            "19",
                            style: theme.textTheme.labelLarge,
                          ),
                          Text(
                            "20",
                            style: theme.textTheme.labelLarge,
                          ),
                          Text(
                            "21",
                            style: theme.textTheme.labelLarge,
                          ),
                          Text(
                            "22",
                            style: theme.textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "23",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 30.h,
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "24",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 30.h,
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "25",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 30.h,
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "26",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Container(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          margin: EdgeInsets.only(left: 22.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgContrast,
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "27",
                                  style: CustomTextStyles.labelLargePrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "28",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 30.h,
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "29",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 14.v,
                        right: 3.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "30",
                            style: theme.textTheme.labelLarge,
                          ),
                          Text(
                            "1",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "2",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "3",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "4",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "5",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          Text(
                            "6",
                            style: CustomTextStyles.labelLargeBluegray400,
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
