import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:thesisapp/widgets/custom_text_form_field.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameThirteenScreen extends StatefulWidget {
  FrameThirteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<FrameThirteenScreen> createState() => _FrameThirteenScreenState();
}

class _FrameThirteenScreenState extends State<FrameThirteenScreen> {
  TextEditingController ninetyThreeController = TextEditingController();

  TextEditingController eightySixController = TextEditingController();

  TextEditingController eightyFiveController = TextEditingController();

  TextEditingController eightyTwoController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 435.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.h,
                    vertical: 40.v,
                  ),
                  decoration: AppDecoration.gradientGreenAFToGreenAF,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 83.v),
                      _buildNinetyThree(context),
                      SizedBox(height: 30.v),
                      _buildEightySix(context),
                      SizedBox(height: 35.v),
                      _buildEightyFive(context),
                      SizedBox(height: 35.v),
                      _buildEightyTwo(context),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img16654623031851146x360,
                height: 146.v,
                width: 360.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Prevention and Management",
                    style: CustomTextStyles
                        .titleMediumInknutAntiquaOnSecondaryContainer,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 10.v),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Strategies",
                    style: CustomTextStyles
                        .titleMediumInknutAntiquaOnSecondaryContainer,
                  ),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 17.h,
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
    );
  }

  /// Section Widget
  Widget _buildNinetyThree(BuildContext context) {
    return CustomTextFormField(
      controller: ninetyThreeController,
      hintText: "Cultural Management",
      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
      fillColor: appTheme.lightGreen5001,
    );
  }

  /// Section Widget
  Widget _buildEightySix(BuildContext context) {
    return CustomTextFormField(
      controller: eightySixController,
      hintText: "Chemical Management",
      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
      fillColor: appTheme.lightGreen5001,
    );
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
    return CustomTextFormField(
      controller: eightyFiveController,
      hintText: "Physical Management",
      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
      fillColor: appTheme.lightGreen5001,
    );
  }

  /// Section Widget
  Widget _buildEightyTwo(BuildContext context) {
    return CustomTextFormField(
      controller: eightyTwoController,
      hintText: "Biological Management",
      textInputAction: TextInputAction.done,
      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
      fillColor: appTheme.lightGreen5001,
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
