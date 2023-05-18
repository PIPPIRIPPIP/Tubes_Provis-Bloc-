import '../models/pilih_akun_item_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:ayesha_s_application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PilihAkunItemWidget extends StatelessWidget {
  PilihAkunItemWidget(this.pilihAkunItemModelObj, {this.onTapDaftarsebagai});

  PilihAkunItemModel pilihAkunItemModelObj;

  VoidCallback? onTapDaftarsebagai;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 28,
          top: 17,
          right: 28,
          bottom: 17,
        ),
        decoration: AppDecoration.outlineBlack9003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pilihAkunItemModelObj.pendaftaraninveTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular16,
            ),
            Container(
              width: getHorizontalSize(
                211,
              ),
              margin: getMargin(
                top: 22,
              ),
              child: Text(
                pilihAkunItemModelObj.sebagaiinvestorTxt,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtPoppinsRegular12,
              ),
            ),
            CustomButton(
              height: getVerticalSize(
                37,
              ),
              width: getHorizontalSize(
                234,
              ),
              text: "msg_daftar_sebagai_investor".tr,
              margin: getMargin(
                top: 16,
                bottom: 2,
              ),
              onTap: () {
                // onTapDaftarsebagai.call(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
