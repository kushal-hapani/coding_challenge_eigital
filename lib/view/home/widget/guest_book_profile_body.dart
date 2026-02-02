import 'dart:developer';

import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:coding_challenge_eigital/view/home/widget/allergy_tile_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_notes_card_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_profile_overview_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_tab_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/online_review_tile_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/recent_orders_tile_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/upcoming_event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GuestBookProfileBody extends StatelessWidget {
  final VoidCallback onShowGuestListTap;
  final bool isGuestListVisible;
  final Map<String, String> userData;

  const GuestBookProfileBody({
    super.key,
    required this.onShowGuestListTap,
    required this.isGuestListVisible,
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Visibility(
          visible: !isGuestListVisible,
          child: GestureDetector(
            onTap: onShowGuestListTap,
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, color: AppColor.grey, size: 20),
                Text(
                  'Guest Book',
                  style: TextStyle(
                    color: AppColor.grey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),

        26.verticalSpace,

        _buildGuestBookCard(),

        24.verticalSpace,

        GuestTabWidget(
          onTabSelect: (value) {
            log('Selected Tab: $value');
          },
          isGuestListVisible: isGuestListVisible,
        ),

        24.verticalSpace,

        //
        GuestProfileOverviewSectionWidget(userData: userData),

        24.verticalSpace,

        Builder(
          builder: (ctx) {
            final isPortrait =
                MediaQuery.of(ctx).size.width < MediaQuery.of(ctx).size.height;
            log('Is Portrait : $isPortrait');

            if (isPortrait || isGuestListVisible || isSmallTablet(context)) {
              return Column(
                children: [
                  AllergyTileWidget(),
                  24.verticalSpace,
                  UpcomingEventTileWidget(),
                ],
              );
            } else {
              return Row(
                children: [
                  Expanded(child: AllergyTileWidget()),
                  24.horizontalSpace,
                  Expanded(child: UpcomingEventTileWidget()),
                ],
              );
            }
          },
        ),

        24.verticalSpace,

        GuestNotesCardWidget(),

        24.verticalSpace,

        RecentOrdersTileWidget(),

        24.verticalSpace,

        OnlineReviewTileWidget(),

        100.verticalSpace,
      ],
    );
  }

  Container _buildGuestBookCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 14.w),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.svg.bookIc, height: 56),
          Text(
            'Guest Book',
            style: TextStyle(
              color: AppColor.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          8.verticalSpace,
          Text(
            "The guest book feature remembers your guests' dietary needs, allergies, and favorite dishes. It organizes dining preferences for a customized and memorable experience, ensuring each visit is tailored to their individual needs.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.grey,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
