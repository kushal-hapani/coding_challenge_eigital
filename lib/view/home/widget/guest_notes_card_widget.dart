import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GuestNotesCardWidget extends StatelessWidget {
  const GuestNotesCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Text(
          'NOTES',
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
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              _buildNoteItem(
                icon: Assets.svg.generalNoteIc,
                title: 'General',
                subtitle: 'Add notes',
              ),

              _buildNoteItem(
                icon: Assets.svg.starIc,
                title: 'Special Relation',
                subtitle: 'Add notes',
              ),

              _buildNoteItem(
                icon: Assets.svg.tableIc2,
                title: 'Seating Preferences',
                subtitle: 'Add notes',
              ),

              _buildNoteItem(
                icon: Assets.svg.specialNotesIc,
                title: 'Special Note*',
                subtitle: 'Add notes',
              ),

              _buildNoteItem(
                icon: Assets.svg.allregiesIc2,
                title: 'Allergies',
                subtitle: 'Add notes',
              ),
            ].addVWidget(_buildDivider()),
          ),
        ),
      ],
    );
  }

  Widget _buildNoteItem({
    required String icon,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(icon, width: 20, height: 20),
              8.horizontalSpace,
              Text(
                title,
                style: TextStyle(
                  color: AppColor.black2,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              4.verticalSpace,
            ],
          ),

          4.verticalSpace,

          Text(
            subtitle,
            style: TextStyle(
              color: AppColor.grey3,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1,
      color: AppColor.grey4,
      margin: EdgeInsets.symmetric(vertical: 4.h),
    );
  }
}
