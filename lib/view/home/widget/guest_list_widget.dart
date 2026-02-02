import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GuestListWidget extends StatefulWidget {
  final VoidCallback onBackTap;
  final Function(String) onGuestTap;
  final bool isGuestListVisible;
  final List<Map<String, String>> mockGuestData;
  final String selectedId;

  const GuestListWidget({
    super.key,
    required this.onBackTap,
    required this.isGuestListVisible,
    required this.mockGuestData,
    required this.onGuestTap,
    required this.selectedId,
  });

  @override
  State<GuestListWidget> createState() => _GuestListWidgetState();
}

class _GuestListWidgetState extends State<GuestListWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: widget.isGuestListVisible ? 240.w : 0,
      margin: EdgeInsets.only(top: 18.h),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        border: widget.isGuestListVisible
            ? Border(right: BorderSide(color: AppColor.grey2))
            : null,
      ),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 300),
        opacity: widget.isGuestListVisible ? 1.0 : 0.0,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            width: 240.w,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //
                GestureDetector(
                  onTap: widget.onBackTap,
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: AppColor.grey,
                        size: 20,
                      ),
                      Flexible(
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color: AppColor.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),

                16.verticalSpace,

                CupertinoSearchTextField(
                  suffixIcon: Icon(Icons.mic),
                  suffixMode: OverlayVisibilityMode.always,
                  borderRadius: BorderRadius.circular(8),
                  style: TextStyle(
                    color: AppColor.black2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                8.verticalSpace,

                Row(
                  children: [
                    //
                    Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: SvgPicture.asset(Assets.svg.addIc),
                    ),

                    8.horizontalSpace,

                    Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColor.grey5,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: SvgPicture.asset(Assets.svg.archieveIc),
                    ),

                    Spacer(),

                    Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColor.grey6,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Icon(
                        Icons.sort_by_alpha,
                        size: 16,
                        color: AppColor.black,
                      ),
                    ),
                  ],
                ),

                12.verticalSpace,

                Flexible(
                  child: Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListView.builder(
                      itemCount: widget.mockGuestData.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (_, index) {
                        final guest = widget.mockGuestData[index];

                        return GuestCardWidget(
                          name: guest['name']!,
                          profilePic: guest['profilePic']!,
                          email: guest['email']!,
                          phone: guest['phone']!,
                          isSelected: guest['id'] == widget.selectedId,
                          onTap: () {
                            widget.onGuestTap(guest['id']!);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GuestCardWidget extends StatelessWidget {
  final String name;
  final String profilePic;
  final String email;
  final String phone;
  final bool isSelected;
  final VoidCallback onTap;

  const GuestCardWidget({
    super.key,
    required this.name,
    required this.profilePic,
    required this.email,
    required this.phone,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isSmallT = isSmallTablet(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: 8.h, left: 8.w, right: 8.w),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.grey7 : AppColor.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipOval(
                  child: profilePic.isNotEmpty
                      ? Image.asset(
                          profilePic,
                          height: 48.h,
                          width: 48.h,
                          fit: BoxFit.cover,
                        )
                      : Container(
                          alignment: Alignment.center,
                          height: 48.h,
                          width: 48.h,
                          color: AppColor.grey,
                          child: Text(
                            name.getInitials,
                            style: TextStyle(
                              fontSize: isSmallT ? 12.sp : 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                ),
                12.horizontalSpace,

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: isSmallT ? 12.sp : 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      4.verticalSpace,
                      Text(
                        email,
                        style: TextStyle(
                          color: AppColor.black2,
                          fontSize: isSmallT ? 9.sp : 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        phone,
                        style: TextStyle(
                          color: AppColor.black2,
                          fontSize: isSmallT ? 9.sp : 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            8.verticalSpace,

            Container(height: 1, color: AppColor.grey2),
          ],
        ),
      ),
    );
  }
}
