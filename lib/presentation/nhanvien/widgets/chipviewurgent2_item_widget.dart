import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewurgent2ItemWidget extends StatelessWidget {
  const Chipviewurgent2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "admin",
        style: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      selectedColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blue50,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
