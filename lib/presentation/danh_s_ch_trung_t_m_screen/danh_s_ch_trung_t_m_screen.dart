import '../danh_s_ch_trung_t_m_screen/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mitec/widgets/app_bar/appbar_image.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:mitec/widgets/app_bar/appbar_title.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class DanhSChTrungTMScreen extends StatelessWidget {
  DanhSChTrungTMScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.fillOnErrorContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 254.v,
                      width: 339.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgEllipse,
                            height: 49.v,
                            width: 64.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 24.v,
                              right: 6.h,
                            ),
                          ),
                          CarouselSlider.builder(
                            options: CarouselOptions(
                              height: 182.v,
                              initialPage: 0,
                              autoPlay: true,
                              viewportFraction: 1.0,
                              enableInfiniteScroll: false,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (
                                index,
                                reason,
                              ) {
                                sliderIndex = index;
                              },
                            ),
                            itemCount: 1,
                            itemBuilder: (context, index, realIndex) {
                              return SliderItemWidget();
                            },
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 10.v,
                              margin: EdgeInsets.only(bottom: 10.v),
                              child: AnimatedSmoothIndicator(
                                activeIndex: sliderIndex,
                                count: 1,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: appTheme.indigoA700,
                                  dotColor: appTheme.indigo50,
                                  dotHeight: 10.v,
                                  dotWidth: 10.h,
                                ),
                              ),
                            ),
                          ),
                          CustomAppBar(
                            height: 52.v,
                            leadingWidth: 170.h,
                            leading: AppbarImage(
                              svgPath: ImageConstant.imgFrameGreen500,
                              margin: EdgeInsets.only(
                                top: 32.v,
                                right: 154.h,
                                bottom: 3.v,
                              ),
                            ),
                            title: Container(
                              height: 52.25.v,
                              width: 170.h,
                              margin: EdgeInsets.only(left: 18.h),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  AppbarImage(
                                    svgPath: ImageConstant.imgFrameGreen500,
                                    margin: EdgeInsets.only(
                                      top: 32.v,
                                      right: 154.h,
                                      bottom: 3.v,
                                    ),
                                  ),
                                  AppbarSubtitle3(
                                    text: "229 Tây Sơn, Đống Đa, HN",
                                    margin: EdgeInsets.only(
                                      left: 19.h,
                                      top: 34.v,
                                      right: 1.h,
                                    ),
                                  ),
                                  AppbarTitle(
                                    text: "Mipec Palace",
                                    margin: EdgeInsets.only(bottom: 14.v),
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              AppbarIconbutton2(
                                svgPath: ImageConstant
                                    .imgArrowdownOnsecondarycontainer,
                                margin:
                                    EdgeInsets.fromLTRB(20.h, 4.v, 20.h, 5.v),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(13.h, 24.v, 23.h, 11.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgFrameGreen50016x16,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "tổng sức chứa :",
                                      style: CustomTextStyles
                                          .labelLargeInterGray600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "5 sảnh - 1000 người",
                                style:
                                    CustomTextStyles.labelLargeInterBluegray900,
                              ),
                            ],
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgTicket,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 8.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              top: 11.v,
                              bottom: 9.v,
                            ),
                            child: Text(
                              "Xem đường đến",
                              style: CustomTextStyles
                                  .labelLargeInterSecondaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(height: 80.v),
              Text(
                "Nguyễn Thông, Đà Nẵng",
                style: CustomTextStyles.bodySmallInterGray600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
