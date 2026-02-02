import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:flutter/material.dart';

class GuestBasicInfoCardWidget extends StatefulWidget {
  const GuestBasicInfoCardWidget({super.key});

  @override
  State<GuestBasicInfoCardWidget> createState() =>
      _GuestBasicInfoCardWidgetState();
}

class _GuestBasicInfoCardWidgetState extends State<GuestBasicInfoCardWidget> {
  final loyaltyController = TextEditingController();
  final sinceController = TextEditingController();
  final birthdayController = TextEditingController();
  final anniversaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);
    return Container(
      width: 180.w,
      height: isSmallT ? 150.h : 180.h,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GuestInfoRow(
            label: 'Loyalty',
            value: 'RF',
            controller: loyaltyController,
          ),
          GuestInfoRow(
            label: 'Since',
            value: 'Enter',
            controller: sinceController,
          ),
          GuestInfoRow(
            label: 'Birthday',
            value: 'Enter',
            icon: Icons.cake_outlined,
            controller: birthdayController,
          ),
          GuestInfoRow(
            label: 'Anniversary',
            value: 'Enter',
            icon: Icons.local_offer_outlined,
            controller: anniversaryController,
          ),
        ].addVWidget(Container(height: 1, color: AppColor.grey2)),
      ),
    );
  }
}

class GuestInfoRow extends StatelessWidget {
  final String label;
  final String value;
  final IconData? icon;
  final TextEditingController controller;
  const GuestInfoRow({
    super.key,
    required this.label,
    required this.value,
    this.icon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: AppColor.grey3,
                    fontSize: isSmallT ? 12.sp : 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (icon != null) ...[
                  6.horizontalSpace,
                  Icon(icon, size: 16, color: AppColor.grey3),
                ],
              ],
            ),

            //
            Expanded(
              child: TextField(
                controller: controller,
                textAlign: TextAlign.right,
                onTapOutside: (_) {
                  FocusScope.of(context).unfocus();
                },
                style: TextStyle(
                  color: AppColor.black2,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintText: value,
                  filled: false,
                  hintStyle: TextStyle(
                    color: AppColor.grey2,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
