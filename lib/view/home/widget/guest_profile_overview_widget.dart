import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_basic_info_card_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_loyalty_stats_card_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_stats_summary_bar_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_visits_stats_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GuestProfileOverviewSectionWidget extends StatelessWidget {
  final Map<String, String> userData;

  const GuestProfileOverviewSectionWidget({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: IntrinsicHeight(
          child: Row(
            children: [
              //
              SizedBox(
                width: isSmallT ? 150.w : 180.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    (userData['profilePic']?.isEmpty ?? false)
                        ? ClipOval(
                            child: Container(
                              alignment: Alignment.center,
                              height: 56,
                              width: 56,
                              color: AppColor.grey,
                              child: Text(
                                userData['name']!.getInitials,
                                style: TextStyle(
                                  fontSize: isSmallT ? 12.sp : 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                          )
                        : Image.asset(
                            userData['profilePic']!,
                            height: 56,
                            width: 56,
                            fit: BoxFit.contain,
                          ),
                    8.verticalSpace,
                    Text(
                      userData['name']!,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      userData['email']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      userData['phone']!,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.black2,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'Add Tags',
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(width: 2, color: AppColor.grey2),

              18.horizontalSpace,

              IntrinsicWidth(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.5,
                  ),
                  child: Column(
                    children: [
                      //
                      const GuestStateSummaryBarWidget(),

                      16.verticalSpace,

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GuestBasicInfoCardWidget(),
                          GuestLoyaltyStatsCardWidget(),
                          GuestVisitStatsCardWidget(),
                        ].addHSpacing(14.w),
                      ),

                      16.verticalSpace,

                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: AppColor.bgColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  //
                                  SvgPicture.asset(Assets.svg.cupCakeIc),
                                  12.horizontalSpace,
                                  Text(
                                    'No Ordered Items',
                                    style: TextStyle(
                                      color: AppColor.black2,
                                      fontSize: isSmallT ? 12.sp : 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: AppColor.bgColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  //
                                  SvgPicture.asset(Assets.svg.carIc),
                                  12.horizontalSpace,
                                  Text(
                                    'No recent vehicle to show',
                                    style: TextStyle(
                                      color: AppColor.black2,
                                      fontSize: isSmallT ? 12.sp : 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ].addHSpacing(14.w),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
