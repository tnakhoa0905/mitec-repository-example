import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';

// ignore: must_be_immutable
class ReportsummaryItemWidget extends StatelessWidget {
  const ReportsummaryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVolume,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "báo cáo doanh thu tổng hợp",
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
