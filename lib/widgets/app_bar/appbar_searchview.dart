import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 232.h,
        controller: controller,
        hintText: "Search",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(27.h, 10.v, 6.h, 10.v),
          child: CustomImageView(
            svgPath: ImageConstant.imgFrameBlueGray30002,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 36.v,
        ),
        suffix: Padding(
          padding: EdgeInsets.only(
            right: 15.h,
          ),
          child: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
        contentPadding: EdgeInsets.only(
          top: 10.v,
          right: 30.h,
          bottom: 10.v,
        ),
        borderDecoration: SearchViewStyleHelper.fillOnErrorContainer,
      ),
    );
  }
}
