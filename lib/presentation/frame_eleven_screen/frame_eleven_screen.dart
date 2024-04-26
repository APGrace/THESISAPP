import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'widgets/frameeleven_item_widget.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameElevenScreen extends StatefulWidget {
  FrameElevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<FrameElevenScreen> createState() => _FrameElevenScreenState();
}

class _FrameElevenScreenState extends State<FrameElevenScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildArrowOne(context),
              SizedBox(height: 5.v),
              _buildFrameEleven(context),
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
            leadingWidth: 36.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 14.h,
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
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 70.h),
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "Types of Leaf Diseases",
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
  Widget _buildFrameEleven(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 136.v,
        crossAxisCount: 2,
        mainAxisSpacing: 30.h,
        crossAxisSpacing: 30.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) {
        return FrameelevenItemWidget();
      },
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
