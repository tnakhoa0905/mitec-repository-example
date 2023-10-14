import '../th_m_nh_n_s_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitec/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mitec/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitec/widgets/app_bar/custom_app_bar.dart';
import 'package:mitec/widgets/custom_bottom_bar.dart';
import 'package:mitec/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class ThMNhNSScreen extends StatelessWidget {
  ThMNhNSScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
            text: "thêm nhân sự",
          ),
          actions: [
            AppbarIconbutton2(
              svgPath: ImageConstant.imgPlusOnsecondarycontainer,
              margin: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 7.v,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 33.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "tìm kiếm theo tên, sđt, ...",
                hintStyle: CustomTextStyles.titleSmallBluegray400,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearchBlueGray400,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 48.v,
                ),
                suffix: Padding(
                  padding: EdgeInsets.only(
                    right: 15.h,
                  ),
                  child: IconButton(
                    onPressed: () {
                      searchController.clear();
                    },
                    icon: Icon(
                      Icons.clear,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Expanded(
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.v),
                      child: SizedBox(
                        width: 327.h,
                        child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.blue50,
                        ),
                      ),
                    );
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return UserprofileItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
