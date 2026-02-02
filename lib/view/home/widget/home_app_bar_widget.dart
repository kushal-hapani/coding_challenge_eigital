import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SizedBox(
      height: isLandscape
          ? 60.h
          : isSmallT
          ? 48.h
          : 56.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          //
          Container(
            width: double.infinity,
            height: isSmallT ? 40.h : 48.h,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: BoxDecoration(
              color: AppColor.black2,
              boxShadow: [
                BoxShadow(
                  color: AppColor.black.withValues(alpha: 0.8),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                //
                SvgPicture.asset(Assets.svg.menuIc, height: 20.h, width: 20.h),

                14.horizontalSpace,

                SvgPicture.asset(
                  Assets.svg.swapAccIc,
                  height: 20.h,
                  width: 20.h,
                ),

                14.horizontalSpace,

                Image.asset(
                  Assets.img.mockProfileImg.path,
                  height: 20.h,
                  width: 20.h,
                  fit: BoxFit.contain,
                ),

                Text(
                  'Johnson',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                12.horizontalSpace,

                Text(
                  'Clocked in at 09 : 33 AM',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Spacer(),

                Text(
                  '10 : 20 AM',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                20.horizontalSpace,

                SvgPicture.asset(Assets.svg.wifiIc, height: 20.h, width: 20.h),

                20.horizontalSpace,

                SvgPicture.asset(
                  Assets.svg.notificationIc,
                  height: 20.h,
                  width: 20.h,
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 4,
            child: Container(
              height: isLandscape ? 22.h : 20.h,
              width: 200,
              decoration: BoxDecoration(
                color: AppColor.black2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: AppColor.white,
                size: isLandscape ? 24 : 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
