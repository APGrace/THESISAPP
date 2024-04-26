import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameSixteenScreen extends StatefulWidget {
  FrameSixteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<FrameSixteenScreen> createState() => _FrameSixteenScreenState();
}

class _FrameSixteenScreenState extends State<FrameSixteenScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildArrowOne(context),
              SizedBox(
                height: 406.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle21,
                      height: 266.v,
                      width: 360.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 296.h,
                        child: Text(
                          "1. Climate Conditions: Extreme temperatures, fluctuations in humidity levels, and prolonged periods of rainfall or drought can create favorable conditions for the proliferation of fungal, bacterial, and viral pathogens that cause leaf diseases.",
                          maxLines: 22,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.titleSmallKoHoPrimaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowOne(BuildContext context) {
    return SizedBox(
      height: 187.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img16654623031851146x360,
            height: 146.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          CustomAppBar(
            leadingWidth: 40.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 18.h,
                top: 21.v,
                bottom: 133.v,
              ),
            ),
            title: AppbarSubtitle(
              text: "Back",
              margin: EdgeInsets.only(
                left: 10.h,
                top: 11.v,
                bottom: 125.v,
              ),
            ),
            styleType: Style.bgGradientnamegreenA100f9namegreenA100f9,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "Environmental Factors",
                style: CustomTextStyles
                    .titleMediumInknutAntiquaOnSecondaryContainer,
              ),
            ),
          ),
        ],
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
}
