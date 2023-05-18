import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:ayesha_s_application3/core/app_export.dart';
import 'package:ayesha_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:ayesha_s_application3/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:ayesha_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:ayesha_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  381,
                ),
                margin: getMargin(
                  left: 16,
                  top: 22,
                  right: 17,
                ),
                padding: getPadding(
                  top: 14,
                  bottom: 14,
                ),
                decoration: AppDecoration.outlineGray4003.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(
                        85,
                      ),
                      leadingWidth: 107,
                      leading: AppbarImage(
                        height: getSize(
                          74,
                        ),
                        width: getSize(
                          74,
                        ),
                        imagePath: ImageConstant.imgProfile21,
                        margin: getMargin(
                          left: 33,
                          top: 4,
                          bottom: 1,
                        ),
                      ),
                      centerTitle: true,
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_ayesha_ali_firdaus2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold18,
                          ),
                          AppbarSubtitle1(
                            text: "lbl_6281234567890".tr,
                            margin: getMargin(
                              right: 88,
                            ),
                          ),
                          AppbarSubtitle1(
                            text: "msg_ayeshali_example_com".tr,
                            margin: getMargin(
                              top: 2,
                              right: 45,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                right: 129,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_grade".tr,
                                      style: TextStyle(
                                        color: ColorConstant.fromHex("#ffffff"),
                                        fontSize: getFontSize(
                                          11,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "lbl_a".tr,
                                      style: TextStyle(
                                        color: ColorConstant.fromHex("#ffe500"),
                                        fontSize: getFontSize(
                                          11,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        AppbarImage(
                          height: getSize(
                            17,
                          ),
                          width: getSize(
                            17,
                          ),
                          imagePath: ImageConstant.imgEdit1,
                          margin: getMargin(
                            left: 33,
                            right: 33,
                            bottom: 62,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: getPadding(
                    left: 15,
                    top: 7,
                    right: 15,
                    bottom: 7,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 1,
                          top: 19,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Text(
                                "lbl_profile_umkm".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold14Black900,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "msg_edit_profile_umkm".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 1,
                          top: 6,
                          right: 2,
                        ),
                        padding: getPadding(
                          left: 14,
                          top: 6,
                          right: 14,
                          bottom: 6,
                        ),
                        decoration: AppDecoration.outlineGray400.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                133,
                              ),
                              child: Text(
                                "msg_jenis_usaha_provinis".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium12Black900,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                87,
                              ),
                              margin: getMargin(
                                right: 2,
                              ),
                              child: Text(
                                "msg_kuliner_jawa_barat_bandung_rp".tr,
                                maxLines: null,
                                textAlign: TextAlign.right,
                                style: AppStyle.txtPoppinsRegular12Black900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 1,
                          top: 27,
                        ),
                        child: Text(
                          "lbl_tentang".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold14Black900,
                        ),
                      ),
                      BlocSelector<ProfileBloc, ProfileState,
                          TextEditingController?>(
                        selector: (state) => state.grouponeController,
                        builder: (context, grouponeController) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: grouponeController,
                            margin: getMargin(
                              top: 3,
                            ),
                            variant: TextFormFieldVariant.OutlineGray400_1,
                            shape: TextFormFieldShape.RoundedBorder10,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                              margin: getMargin(
                                left: 20,
                                top: 30,
                                right: 20,
                                bottom: 30,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.black900,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgArrow7,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                117,
                              ),
                            ),
                          );
                        },
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_version_1_0".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular12Bluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
