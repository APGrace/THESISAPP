import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_title.dart';
import 'package:thesisapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:readmore/readmore.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FrameTenScreen extends StatelessWidget {
  FrameTenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 7.v),
              _buildHowToLiveThe(context),
              SizedBox(height: 21.v),
              SizedBox(
                height: 340.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 37.h,
                        right: 193.h,
                      ),
                      child: _buildFour(
                        context,
                        untitledDesign: ImageConstant.img79155724LeafI,
                        importanceofEarlyDetection: "Leaf Diseases",
                        onTapFour: () {
                          onTapFive(context);
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          onTapThree(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 194.h,
                            right: 36.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 27.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 14.v),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgImagesRemovebgPreview,
                                height: 57.v,
                                width: 52.h,
                                margin: EdgeInsets.only(left: 10.h),
                              ),
                              SizedBox(height: 9.v),
                              Container(
                                width: 75.h,
                                margin: EdgeInsets.only(left: 1.h),
                                decoration: AppDecoration.outlineBlack,
                                child: Text(
                                  "Prevention & Management",
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      CustomTextStyles.labelLargeLightgreen900,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    _buildSeven(context)
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 73.v,
      title: AppbarTitle(
        text: "Learning Resources",
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgHamburgerIcon2,
          margin: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 10.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildHowToLiveThe(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHowToLiveThe,
            height: 132.v,
            width: 119.h,
            margin: EdgeInsets.only(bottom: 26.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Why Trees?",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 207.h,
                  child: ReadMoreText(
                    "Trees help clean the air we breath, filter the water we drink, and provide habitat to over 80% of the world's terrestrial biodiversity.\nForests provide jobs to over 1.6 billion people, absorb harmful carbon from the atmosphere, and are key ingredients in 25% of all medicines.",
                    trimLines: 8,
                    colorClickableText: appTheme.green700,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "READ MORE",
                    moreStyle:
                        CustomTextStyles.labelLargeKarlaOnSecondaryContainer,
                    lessStyle:
                        CustomTextStyles.labelLargeKarlaOnSecondaryContainer,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 70.v),
        padding: EdgeInsets.symmetric(
          horizontal: 36.h,
          vertical: 49.v,
        ),
        decoration: AppDecoration.gradientGreenAFToGreenAF,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 36.v,
                  right: 13.h,
                ),
                child: _buildFour(
                  context,
                  untitledDesign: ImageConstant.imgUntitledDesign,
                  importanceofEarlyDetection: "Importance of Early Detection",
                  onTapFour: () {
                    onTapFour(context);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 36.v,
                ),
                child: _buildFour(
                  context,
                  untitledDesign: ImageConstant.imgEcoEnvironment,
                  importanceofEarlyDetection: "Environmental Factors",
                  onTapFour: () {
                    onTapTwo(context);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildFour(
    BuildContext context, {
    required String untitledDesign,
    required String importanceofEarlyDetection,
    Function? onTapFour,
  }) {
    return GestureDetector(
      onTap: () {
        onTapFour?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 3.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.outlineBlack9002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 14.v),
            CustomImageView(
              imagePath: untitledDesign,
              height: 60.adaptSize,
              width: 60.adaptSize,
            ),
            SizedBox(height: 13.v),
            Container(
              width: 124.h,
              decoration: AppDecoration.outlineBlack,
              child: Text(
                importanceofEarlyDetection,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeLightgreen900.copyWith(
                  color: appTheme.lightGreen900,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.frameFourPage;
      case BottomBarEnum.Diagnose:
        return "/";
      case BottomBarEnum.Learn:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.frameFourPage:
        return FrameFourPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the frame ElevenScreen when the action is triggered.
  onTapFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameElevenScreen);
  }

  /// Navigates to the frame ThirteenScreen when the action is triggered.
  onTapThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameThirteenScreen);
  }

  /// Navigates to the frame FifteenScreen when the action is triggered.
  onTapFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFifteenScreen);
  }

  /// Navigates to the frameSixteenScreen when the action is triggered.
  onTapTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameSixteenScreen);
  }
}
