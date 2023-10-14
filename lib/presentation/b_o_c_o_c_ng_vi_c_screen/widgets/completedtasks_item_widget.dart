import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';

// ignore: must_be_immutable
class CompletedtasksItemWidget extends StatelessWidget {
  const CompletedtasksItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "đã hoàn thành",
                style: CustomTextStyles.titleMedium16,
              ),
              CustomImageView(
                svgPath: ImageConstant.imgMore,
                height: 4.v,
                width: 16.h,
                margin: EdgeInsets.only(top: 20.v),
              ),
            ],
          ),
          SizedBox(height: 1.v),
          SizedBox(
            height: 18.v,
            width: 121.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "tổng 18 việc đã xong",
                    style: CustomTextStyles.bodySmall12,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 2.adaptSize,
                    width: 2.adaptSize,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      right: 42.h,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray400,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
