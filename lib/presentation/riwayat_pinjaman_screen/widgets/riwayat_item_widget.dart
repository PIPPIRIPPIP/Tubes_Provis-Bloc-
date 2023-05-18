import '../models/riwayat_item_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RiwayatItemWidget extends StatelessWidget {
  RiwayatItemWidget(this.riwayatItemModelObj);

  RiwayatItemModel riwayatItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 1,
          top: 4,
          right: 1,
          bottom: 4,
        ),
        decoration: AppDecoration.outlineGray400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 16,
                  right: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_no".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold12,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                        top: 3,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_p20072312345".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: getSize(
                        26,
                      ),
                      width: getSize(
                        26,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 3,
                        bottom: 4,
                      ),
                      child: Text(
                        riwayatItemModelObj.remainingdaysTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.gray400,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 15,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      riwayatItemModelObj.paymentamountlaTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold12,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 100,
                      bottom: 1,
                    ),
                    child: Text(
                      riwayatItemModelObj.totallabelTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                right: 28,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "lbl_rp".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold16Gray600,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 9,
                      bottom: 1,
                    ),
                    child: Text(
                      riwayatItemModelObj.paymentamountTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold16Black90001,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "lbl_rp".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold16Gray600,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 9,
                      bottom: 1,
                    ),
                    child: Text(
                      riwayatItemModelObj.totalamountTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold16Black90001,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Container(
                height: getVerticalSize(
                  5,
                ),
                width: getHorizontalSize(
                  379,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray400,
                ),
                child: ClipRRect(
                  child: LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: ColorConstant.gray400,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      ColorConstant.greenA700,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 3,
                  right: 21,
                  bottom: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        86,
                      ),
                      padding: getPadding(
                        left: 24,
                        top: 1,
                        right: 24,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.txtFillBlueA200.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                      ),
                      child: Text(
                        riwayatItemModelObj.paymentactionlaTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold12WhiteA700,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 2,
                      ),
                      child: Text(
                        riwayatItemModelObj.paymentpercentaTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
