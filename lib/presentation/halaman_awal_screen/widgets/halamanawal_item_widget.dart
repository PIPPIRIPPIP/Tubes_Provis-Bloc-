import '../models/halamanawal_item_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HalamanawalItemWidget extends StatelessWidget {
  HalamanawalItemWidget(this.halamanawalItemModelObj);

  HalamanawalItemModel halamanawalItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          top: 6,
          bottom: 6,
        ),
        decoration: AppDecoration.outlineGray400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 17,
                right: 16,
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
                      "lbl_5_bulan".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold12,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: getVerticalSize(
                1,
              ),
              thickness: getVerticalSize(
                1,
              ),
              color: ColorConstant.gray400,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 11,
                  top: 5,
                  right: 28,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile2,
                      height: getSize(
                        46,
                      ),
                      width: getSize(
                        46,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 4,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_ayesha_ali_firdaus".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold14,
                          ),
                          Text(
                            "msg_modal_usaha_makanan".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular11,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "msg_bandung_jawa_barat".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular11,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_a".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 11,
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
                left: 17,
                top: 7,
                right: 9,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: getVerticalSize(
                      57,
                    ),
                    width: getHorizontalSize(
                      67,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 1,
                            ),
                            child: Text(
                              "lbl_10".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold32Black90001,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "lbl_imbal_hasil".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 49,
                      top: 23,
                      bottom: 9,
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
                      top: 21,
                      bottom: 11,
                    ),
                    child: Text(
                      "lbl_10_000_000".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold16Black90001,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      86,
                    ),
                    margin: getMargin(
                      left: 35,
                      top: 23,
                      bottom: 11,
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
                      "lbl_danai".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold12WhiteA700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 16,
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
            Padding(
              padding: getPadding(
                left: 17,
                top: 2,
                right: 22,
                bottom: 3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 2,
                    ),
                    child: Text(
                      "lbl_terdanai".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold12,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_50".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
