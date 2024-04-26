import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore: must_be_immutable
class FrameelevenItemWidget extends StatelessWidget {
  const FrameelevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.img11,
            height: 75.v,
            width: 106.h,
          ),
          SizedBox(height: 12.v),
          Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "Powdery Mildew",
              style: CustomTextStyles.labelLargePrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
