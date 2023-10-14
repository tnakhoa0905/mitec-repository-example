import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';

// ignore: must_be_immutable
class UserinfoItemWidget extends StatelessWidget {
  UserinfoItemWidget({
    Key? key,
    this.onTapUserinfo,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserinfo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserinfo?.call();
      },
      child: Row(
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
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
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
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "khách a - 12/12/2023",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  "mitec cầu giấy - sảnh 5 A - sáng",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgArrowright,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }
}
