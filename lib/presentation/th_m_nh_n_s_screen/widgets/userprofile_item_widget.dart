import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 48.adaptSize,
          width: 48.adaptSize,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse48x48,
                height: 48.adaptSize,
                width: 48.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(
                    right: 2.h,
                    bottom: 5.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.green400,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                      width: 1.h,
                      strokeAlign: strokeAlignCenter,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 5.v,
            bottom: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lò văn quái",
                style: theme.textTheme.titleSmall,
              ),
              Text(
                "phòng kinh doanh",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgCamera,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 12.v),
        ),
      ],
    );
  }
}
