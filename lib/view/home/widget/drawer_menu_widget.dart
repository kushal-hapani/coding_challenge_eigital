import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.black2,
      width: isSmallTablet(context) ? 36.w : 40.w,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final icon in [
              Assets.svg.appLogo2,
              Assets.svg.newOrderIc,
              Assets.svg.tableIc,
              Assets.svg.openTicketIc,
              Assets.svg.orderOsIc,
              Assets.svg.analyticsIc,
              Assets.svg.appLogo,
            ])
              _buildDrawerMenu(context, icon),
          ].addVWidget(Container(height: 1.5.h, color: AppColor.black)),
        ),
      ),
    );
  }

  SizedBox _buildDrawerMenu(BuildContext context, String icon) {
    return SizedBox(
      height: isSmallTablet(context) ? 60.h : 80.h,
      child: Center(
        child: SvgPicture.asset(
          icon,
          height: isSmallTablet(context) ? 20.h : null,
          width: isSmallTablet(context) ? 20.h : null,
        ),
      ),
    );
  }
}
