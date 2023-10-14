import '../b_o_c_o_screen/widgets/reportsummary_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';

class BOCOScreen extends StatelessWidget {
  const BOCOScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 66.h,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.imgArrowdown,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 7.v,
              bottom: 7.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "báo cáo",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 18.v,
          ),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return ReportsummaryItemWidget();
            },
          ),
        ),
      ),
    );
  }
}
