import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:flutter/material.dart';

class GuestTabWidget extends StatefulWidget {
  final ValueChanged<String> onTabSelect;
  final bool isGuestListVisible;
  const GuestTabWidget({
    super.key,
    required this.onTabSelect,
    required this.isGuestListVisible,
  });

  @override
  State<GuestTabWidget> createState() => _GuestTabWidgetState();
}

class _GuestTabWidgetState extends State<GuestTabWidget> {
  final tabOptions = [
    'Profile',
    'Reservation',
    'Payment',
    'Feedback',
    'Order History',
  ];

  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);
    return Center(
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            for (final option in tabOptions)
              GestureDetector(
                onTap: () {
                  widget.onTabSelect(option);
                  setState(() {
                    selectedTabIndex = tabOptions.indexOf(option);
                  });
                },
                child: Container(
                  padding: widget.isGuestListVisible || isSmallT
                      ? EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h)
                      : EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: selectedTabIndex == tabOptions.indexOf(option)
                        ? AppColor.grey
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    option,
                    style: TextStyle(
                      color: selectedTabIndex == tabOptions.indexOf(option)
                          ? AppColor.white
                          : AppColor.black2,
                      fontSize: (widget.isGuestListVisible || isSmallT)
                          ? 14
                          : 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
