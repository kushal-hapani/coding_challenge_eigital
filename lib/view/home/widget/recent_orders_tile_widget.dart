import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class RecentOrdersTileWidget extends StatelessWidget {
  const RecentOrdersTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Text(
          'RECENT ORDERS',
          style: TextStyle(
            color: AppColor.grey3,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),

        4.verticalSpace,

        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: isSmallT ? 12.h : 20.h,
          ),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Container(
                width: 24.h,
                height: 24.h,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(Assets.svg.spoonAndForkIc),
              ),

              Container(
                height: 64,
                width: 1.w,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                color: AppColor.grey2,
              ),

              Expanded(
                child: Text(
                  'No Recent Orders to Show',
                  style: TextStyle(
                    color: AppColor.black2,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
