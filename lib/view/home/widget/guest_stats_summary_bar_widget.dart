import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:flutter/material.dart';

class GuestStateSummaryBarWidget extends StatelessWidget {
  const GuestStateSummaryBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children:
            [
              GuestStatsItem(title: 'Last Visit', value: '-- -- --'),
              GuestStatsItem(title: 'Average Spend', value: '\$0.00'),
              GuestStatsItem(title: 'Lifetime Spend', value: '\$0.00'),
              GuestStatsItem(title: 'Total Orders', value: '0'),
              GuestStatsItem(title: 'Average Tip', value: '\$0.00'),
            ].addHWidget(
              Container(
                height: 40.h,
                width: 1.w,
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                color: AppColor.grey2,
              ),
            ),
      ),
    );
  }
}

class GuestStatsItem extends StatelessWidget {
  final String title;
  final String value;
  const GuestStatsItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            value,
            style: TextStyle(
              color: AppColor.black2,
              fontSize: isSmallT ? 12.sp : 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        8.verticalSpace,

        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: TextStyle(
              color: AppColor.black2,
              fontSize: isSmallT ? 10.sp : 11.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
