import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle387,
        height: 182.v,
        width: 339.h,
        radius: BorderRadius.circular(
          8.h,
        ),
      ),
    );
  }
}
