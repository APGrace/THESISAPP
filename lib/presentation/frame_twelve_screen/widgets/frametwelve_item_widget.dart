import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore: must_be_immutable
class FrametwelveItemWidget extends StatelessWidget {
  const FrametwelveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoPlants1,
            height: 41.v,
            width: 95.h,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
          ),
          Container(
            width: 211.h,
            margin: EdgeInsets.only(left: 9.h),
            child: Text(
              "Management of Post-Harvest Anthracnose: Current Approaches and Future Perspectives",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelLargeBlack900.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
