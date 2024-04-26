import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameFifteenScreen extends StatefulWidget {
  FrameFifteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<FrameFifteenScreen> createState() => _FrameFifteenScreenState();
}

class _FrameFifteenScreenState extends State<FrameFifteenScreen> {
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
                height: 384.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle2266x360,
                      height: 266.v,
                      width: 360.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 294.h,
                              child: Text(
                                "Early detection and treatment of tree diseases can have numerous benefits for both the environment and your personal property. By identifying and addressing disease threats early on, you can prevent further spread to nearby trees and reduce the risk of a large-scale outbreak. This not only helps preserve the health and beauty of your landscape but also saves you time, money, and effort in long-term management. Additionally, proactive measures such as pruning or removing infected trees can prevent potential hazards such as falling branches or weakened structures.",
                                maxLines: 13,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleSmallKoHoPrimaryContainer,
                              ),
                            ),
                            SizedBox(height: 13.v),
                            SizedBox(
                              width: 296.h,
                              child: Text(
                                "Importance of early detection of tree sapling leaf diseases: \n\r\n1. revention of Spread: Identifying diseases in their early stages allows for prompt intervention, preventing the spread of pathogens to other trees or plant species in the vicinity. Early detection helps contain outbreaks and mitigate potential epidemics, safeguarding the overall health of the ecosystem.\r\n\r\n2.  Effective Treatment: Treating diseases in their initial phases is generally more successful and less resource-intensive compared to addressing advanced infections. Early detection enables targeted treatment strategies, such as pruning infected foliage, applying appropriate fungicides, or implementing cultural practices to enhance tree resistance.\r\n\r\n3. Preservation of Tree Health and Vitality: Healthy trees play a vital role in maintaining biodiversity, air quality, and ecological balance. By detecting and addressing leaf diseases early, you can preserve the vigor and vitality of saplings, ensuring their long-term survival and contribution to the ecosystem.\r\n\r\n4. Cost Savings: Early intervention is often more cost-effective than dealing with the consequences of unchecked disease progression. By investing in early detection measures, such as regular monitoring and timely diagnosis, you can minimize the need for extensive tree removal, replanting, and restoration efforts.\r\n\r\n5.Sustainability and Resilience: Proactive management of tree health fosters sustainable landscapes and resilient ecosystems. Early detection of leaf diseases supports the resilience of urban forests, agricultural orchards, and natural habitats, enhancing their ability to withstand environmental stresses and disturbances.",
                                maxLines: 7,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleSmallKoHoPrimaryContainer,
                              ),
                            ),
                          ],
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
      height: 209.v,
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
            leadingWidth: 41.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 19.h,
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
              margin: EdgeInsets.only(bottom: 22.v),
              decoration: AppDecoration.outlineBlack,
              child: Text(
                " Importance of Early ",
                style: CustomTextStyles
                    .titleMediumInknutAntiquaOnSecondaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "Detection",
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
