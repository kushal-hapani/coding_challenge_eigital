import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpcomingEventTileWidget extends StatelessWidget {
  const UpcomingEventTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Text(
          'UPCOMING VISITS',
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
              //Icon
              Container(
                width: 24.h,
                height: 24.h,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(Assets.svg.eventsIc),
              ),

              Container(
                height: 64,
                width: 1.w,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                color: AppColor.grey2,
              ),

              //Text
              Expanded(
                child: Text(
                  'No Upcoming Visits',
                  style: TextStyle(
                    color: AppColor.black2,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              //Add Button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColor.black2,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  'Book a visit',
                  style: TextStyle(
                    color: AppColor.white,
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
