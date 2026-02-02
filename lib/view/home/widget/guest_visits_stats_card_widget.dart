import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_stats_summary_bar_widget.dart';
import 'package:flutter/material.dart';

class GuestVisitStatsCardWidget extends StatelessWidget {
  const GuestVisitStatsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);
    return Container(
      // height: isSmallT ? 150.h : 170.h,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          Text(
            'Visits',
            style: TextStyle(
              color: AppColor.black2,
              fontSize: isSmallT ? 10.sp : 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),

          Row(
            children:
                [
                  SizedBox(
                    width: 50.w,
                    child: GuestStatsItem(title: 'Total Visits', value: '0'),
                  ),
                  GuestStatsItem(title: 'Upcoming', value: '0'),
                ].addHWidget(
                  Container(
                    height: 40.h,
                    width: 1.w,
                    margin: EdgeInsets.symmetric(horizontal: 24.w),
                    color: AppColor.grey2,
                  ),
                ),
          ),

          Row(
            children:
                [
                  SizedBox(
                    width: 50.w,
                    child: GuestStatsItem(title: 'Canceled', value: '0'),
                  ),
                  GuestStatsItem(title: 'No Shows', value: '\$ 00.00'),
                ].addHWidget(
                  Container(
                    height: 40.h,
                    width: 1.w,
                    margin: EdgeInsets.symmetric(horizontal: 24.w),
                    color: AppColor.grey2,
                  ),
                ),
          ),
        ].addVSpacing(10.h),
      ),
    );
  }
}
