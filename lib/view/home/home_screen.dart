import 'package:coding_challenge_eigital/utils/utils.dart';
import 'package:coding_challenge_eigital/view/home/widget/drawer_menu_widget.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_book_profile_body.dart';
import 'package:coding_challenge_eigital/view/home/widget/guest_list_widget.dart';
import 'package:flutter/material.dart';

import 'widget/home_app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGuestListVisible = false;
  final scrollController = ScrollController();
  String selectedId = '1';
  final mockGuestData = [
    {
      'id': '1',
      'name': 'John Doe',
      'profilePic': Assets.img.mockProfileImg2.path,
      'email': 'john.doe@example.com',
      'phone': '+1 234 567 8901',
    },
    {
      'id': '2',
      'name': 'Jane Smith',
      'profilePic': Assets.img.mockProfileImg3.path,
      'email': 'jane.smith@example.com',
      'phone': '+1 234 567 8902',
    },
    {
      'id': '3',
      'name': 'Michael Johnson',
      'profilePic': Assets.img.mockProfileImg4.path,
      'email': 'michael.j@example.com',
      'phone': '+1 234 567 8903',
    },
    {
      'id': '4',
      'name': 'Emily Brown',
      'profilePic': '',
      'email': 'emily.brown@example.com',
      'phone': '+1 234 567 8904',
    },
    {
      'id': '5',
      'name': 'David Wilson',
      'profilePic': '',
      'email': 'david.wilson@example.com',
      'phone': '+1 234 567 8905',
    },
    {
      'id': '6',
      'name': 'Sarah Davis',
      'profilePic': '',
      'email': 'sarah.davis@example.com',
      'phone': '+1 234 567 8906',
    },
    {
      'id': '7',
      'name': 'James Martinez',
      'profilePic': Assets.img.mockProfileImg5.path,
      'email': 'james.m@example.com',
      'phone': '+1 234 567 8907',
    },
  ];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (isGuestListVisible) {
        isGuestListVisible = false;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            //App Bar
            const HomeAppBar(),

            Padding(
              padding: EdgeInsets.only(top: 40.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  const DrawerMenuWidget(),

                  GuestListWidget(
                    isGuestListVisible: isGuestListVisible,
                    mockGuestData: mockGuestData,
                    selectedId: selectedId,
                    onBackTap: () {
                      setState(() {
                        isGuestListVisible = false;
                      });
                    },
                    onGuestTap: (id) {
                      selectedId = id;
                      setState(() {});
                    },
                  ),

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (isGuestListVisible) {
                          isGuestListVisible = false;
                          setState(() {});
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 24.h,
                          left: 8.w,
                          right: 8.w,
                        ),
                        child: SingleChildScrollView(
                          controller: scrollController,
                          child: GuestBookProfileBody(
                            isGuestListVisible: isGuestListVisible,
                            userData: mockGuestData
                                .where((e) => e['id'] == selectedId)
                                .first,
                            onShowGuestListTap: () {
                              setState(() {
                                isGuestListVisible = true;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
