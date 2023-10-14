import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ChNSNhItemWidget extends StatelessWidget {
  const ChNSNhItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray200,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Container(
        height: 73.v,
        width: 340.h,
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder11,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle38749x49,
                      height: 49.adaptSize,
                      width: 49.adaptSize,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        bottom: 4.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "sảnh A1 - sáng",
                              style:
                                  CustomTextStyles.titleSmallInterBluegray900,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFrameGreen500,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  "100 bàn - 1000 người",
                                  style: CustomTextStyles.bodySmallInterGray600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomIconButton(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      padding: EdgeInsets.all(11.h),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdownOnsecondarycontainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.v),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle38749x49,
                      height: 49.adaptSize,
                      width: 49.adaptSize,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "sảnh A1 - sáng",
                              style:
                                  CustomTextStyles.titleSmallInterBluegray900,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFrameGreen500,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  "100 bàn - 1000 người - 10 tiệc sắp tới",
                                  style: CustomTextStyles.bodySmallInterGray600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomIconButton(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      padding: EdgeInsets.all(11.h),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdownOnsecondarycontainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
