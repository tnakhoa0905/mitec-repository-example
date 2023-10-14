import '../c_ng_vi_c_h_m_nay_screen/widgets/listnineteen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_bottom_bar.dart';
import 'package:mitec/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CNgViCHMNayScreen extends StatelessWidget {
  CNgViCHMNayScreen({Key? key})
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
            children: [
              SizedBox(height: 16.v),
              SizedBox(
                height: 148.v,
                width: 330.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgGroup1000000790,
                      height: 111.v,
                      width: 274.h,
                      alignment: Alignment.bottomLeft,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 82.v,
                          bottom: 5.v,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "12/12/2022  ✍",
                                    style: CustomTextStyles
                                        .headlineSmallOnSecondaryContainer,
                                  ),
                                  Text(
                                    "tổng cộng 15 việc",
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
                              child: CustomImageView(
                                svgPath: ImageConstant
                                    .imgCalendarOnsecondarycontainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomAppBar(
                      height: 42.v,
                      leadingWidth: 66.h,
                      leading: AppbarIconbutton(
                        svgPath: ImageConstant.imgArrowdown,
                        margin: EdgeInsets.only(left: 24.h),
                      ),
                      centerTitle: true,
                      title: AppbarSubtitle(
                        text: "công việc hôm nay",
                      ),
                      actions: [
                        AppbarIconbutton2(
                          svgPath: ImageConstant.imgEditOnsecondarycontainer,
                          margin: EdgeInsets.symmetric(horizontal: 24.h),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 118.v,
                            child: ListView.separated(
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
                                return ListnineteenItemWidget();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 40.v),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 437.v,
                            width: 351.h,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Divider(),
                                      SizedBox(height: 24.v),
                                      SizedBox(
                                        height: 98.v,
                                        width: 327.h,
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                width: 327.h,
                                                child: Divider(),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "10 am",
                                                style: CustomTextStyles
                                                    .titleSmallSemiBold,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "11 am",
                                                style: CustomTextStyles
                                                    .titleSmallSemiBold,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(top: 5.v),
                                                decoration: AppDecoration
                                                    .fillBlue
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16,
                                                ),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20.h,
                                                    vertical: 12.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        ImageConstant
                                                            .imgGroup44,
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h),
                                                        child: Text(
                                                          "dựng tạp sảnh A",
                                                          style: CustomTextStyles
                                                              .titleSmallOnErrorContainer,
                                                        ),
                                                      ),
                                                      SizedBox(height: 5.v),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            height: 24.v,
                                                            width: 40.h,
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse24x24,
                                                                  height: 24
                                                                      .adaptSize,
                                                                  width: 24
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                    12.h,
                                                                  ),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse1,
                                                                  height: 24
                                                                      .adaptSize,
                                                                  width: 24
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                    12.h,
                                                                  ),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        3.v),
                                                            child: Text(
                                                              "10am - 11am",
                                                              style: CustomTextStyles
                                                                  .bodySmallLightblue50,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 2.v),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 25.v),
                                      Divider(),
                                      SizedBox(height: 26.v),
                                      Text(
                                        "12 pm",
                                        style:
                                            CustomTextStyles.titleSmallSemiBold,
                                      ),
                                      SizedBox(height: 24.v),
                                      Divider(),
                                      SizedBox(height: 26.v),
                                      SizedBox(
                                        height: 97.v,
                                        width: 327.h,
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                width: 327.h,
                                                child: Divider(),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "01 pm",
                                                style: CustomTextStyles
                                                    .titleSmallSemiBold,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "02 pm",
                                                style: CustomTextStyles
                                                    .titleSmallSemiBold,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(top: 2.v),
                                                decoration: AppDecoration
                                                    .fillOrange
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16,
                                                ),
                                                child: Container(
                                                  width: 253.h,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 12.h,
                                                    vertical: 11.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        ImageConstant
                                                            .imgGroup45,
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "kiểm tra âm thanh ánh sáng 🤗",
                                                        style: CustomTextStyles
                                                            .titleSmallOnErrorContainer,
                                                      ),
                                                      SizedBox(height: 6.v),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            height: 24.v,
                                                            width: 72.h,
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse1,
                                                                  height: 24
                                                                      .adaptSize,
                                                                  width: 24
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                    12.h,
                                                                  ),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse24x24,
                                                                  height: 24
                                                                      .adaptSize,
                                                                  width: 24
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                    12.h,
                                                                  ),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16.h),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse2,
                                                                  height: 24
                                                                      .adaptSize,
                                                                  width: 24
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                    12.h,
                                                                  ),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              16.h),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child:
                                                                      Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .symmetric(
                                                                      horizontal:
                                                                          4.h,
                                                                      vertical:
                                                                          3.v,
                                                                    ),
                                                                    decoration: AppDecoration
                                                                        .outlineOrange
                                                                        .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder11,
                                                                    ),
                                                                    child: Text(
                                                                      "+5",
                                                                      style: CustomTextStyles
                                                                          .bodySmallOnErrorContainer,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 36.h,
                                                              top: 4.v,
                                                              bottom: 2.v,
                                                            ),
                                                            child: Text(
                                                              "01:20pm - 02:20pm",
                                                              style: CustomTextStyles
                                                                  .bodySmallOrange50,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 3.v),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 39.v),
                                      Divider(
                                        color: appTheme.gray20001,
                                      ),
                                      SizedBox(height: 19.v),
                                      Text(
                                        "03 pm",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 147.v),
                                    decoration: AppDecoration
                                        .fillOnPrimaryContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: Container(
                                      width: 228.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 11.v),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            ImageConstant.imgGroup44,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 21.h),
                                            child: Text(
                                              "mua hoa cưới và rượu 😍",
                                              style: CustomTextStyles
                                                  .titleSmallOnErrorContainer,
                                            ),
                                          ),
                                          SizedBox(height: 6.v),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(
                                                  height: 24.v,
                                                  width: 56.h,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse24x24,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(
                                                          12.h,
                                                        ),
                                                        alignment: Alignment
                                                            .centerLeft,
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse1,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(
                                                          12.h,
                                                        ),
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse3,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(
                                                          12.h,
                                                        ),
                                                        alignment: Alignment
                                                            .centerRight,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 58.h,
                                                    top: 4.v,
                                                    bottom: 2.v,
                                                  ),
                                                  child: Text(
                                                    "11:40am - 12:40pm",
                                                    textAlign: TextAlign.right,
                                                    style: CustomTextStyles
                                                        .bodySmallGreen50,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 3.v),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
