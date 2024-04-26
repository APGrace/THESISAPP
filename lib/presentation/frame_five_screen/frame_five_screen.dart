import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/presentation/frame_twentytwo_dialog/frame_twentytwo_dialog.dart';

class FrameFiveScreen extends StatelessWidget {
  const FrameFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: SizeUtils.height,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle2,
                          height: 270.v,
                          width: 360.h,
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 39.v),
                        ),
                        _buildPhotos(context),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 505.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.img16654623031851146x360,
                                  height: 146.v,
                                  width: 360.h,
                                  alignment: Alignment.topCenter,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle3157x360,
                                  height: 157.v,
                                  width: 360.h,
                                  alignment: Alignment.topCenter,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 275.v,
                                    width: 274.h,
                                    margin: EdgeInsets.only(bottom: 94.v),
                                    decoration: BoxDecoration(
                                      color: appTheme.lightGreen900
                                          .withOpacity(0.45),
                                      borderRadius: BorderRadius.circular(
                                        30.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 40.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 17.h,
                                      top: 16.v,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15.h,
                                      vertical: 5.v,
                                    ),
                                    decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20,
                                    ),
                                    child: Text(
                                      "x",
                                      style: theme.textTheme.headlineMedium,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgScanBarCodeL,
                                  height: 462.v,
                                  width: 360.h,
                                  alignment: Alignment.bottomCenter,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHibiscusBacter547x360,
                height: 547.v,
                width: 360.h,
                alignment: Alignment.topCenter,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotos(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 52.h,
          vertical: 5.v,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 57.v,
              width: 50.h,
              margin: EdgeInsets.symmetric(vertical: 14.v),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Photos",
                      style: CustomTextStyles.bodySmallInterBlack900,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img0cbbaab0deff7f1,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    alignment: Alignment.topCenter,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 51.h,
                bottom: 14.v,
              ),
              child: Column(
                children: [
                  Text(
                    "Identify",
                    style: CustomTextStyles.bodySmallInterLightgreen600,
                  ),
                  Container(
                    padding: EdgeInsets.all(2.h),
                    decoration: AppDecoration.fillLightgreen60001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder27,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(1.h),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder27,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          onTapView(context);
                        },
                        child: Container(
                          height: 49.adaptSize,
                          width: 49.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.lightGreen60001,
                            borderRadius: BorderRadius.circular(
                              24.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Displays a dialog with the [Frame TwentytwoDialog] content.
  onTapView(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: FrameTwentytwoDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
