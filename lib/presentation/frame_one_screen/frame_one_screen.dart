import 'package:thesisapp/widgets/custom_elevated_button.dart';
import 'package:thesisapp/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameOneScreen extends StatelessWidget {
  const FrameOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 45.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 601.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 84.h,
                              vertical: 61.v,
                            ),
                            decoration: AppDecoration.gradientGreenAFToGreenAF,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 149.v),
                                CustomElevatedButton(
                                  height: 52.v,
                                  text: "Log in",
                                  buttonStyle: CustomButtonStyles.outlineBlack,
                                  buttonTextStyle: theme.textTheme.titleLarge!,
                                  onPressed: () {
                                    onTapLogIn(context);
                                  },
                                ),
                                SizedBox(height: 15.v),
                                CustomOutlinedButton(
                                  text: "Sign Up",
                                  onPressed: () {
                                    onTapSignUp(context);
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 540.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 41.h),
                                    decoration: AppDecoration.outlineBlack,
                                    child: Text(
                                      "Welcome",
                                      style: CustomTextStyles.headlineLarge32,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFreeLeavesIcon1571Thumb,
                                  height: 32.v,
                                  width: 35.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 6.h,
                                    top: 25.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.img1665462303185R,
                                  height: 468.v,
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
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the frame TwoScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameTwoScreen);
  }

  /// Navigates to the frameSevenScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameSevenScreen);
  }
}
