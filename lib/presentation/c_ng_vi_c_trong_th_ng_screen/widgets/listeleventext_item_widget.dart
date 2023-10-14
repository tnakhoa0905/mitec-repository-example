import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';

// ignore: must_be_immutable
class ListeleventextItemWidget extends StatelessWidget {
  const ListeleventextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 28.v,
          ),
          decoration: AppDecoration.outlineBlue501.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "11",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 2.v),
              Text(
                "Wed",
                style: CustomTextStyles.titleSmallBluegray400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
