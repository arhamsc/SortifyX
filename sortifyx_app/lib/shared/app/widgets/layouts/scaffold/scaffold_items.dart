import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sortifyx_app/shared/app/blocs/auth_bloc/user_bloc.dart';
import 'package:sortifyx_app/shared/app/theme/app_theme.dart';
import 'package:sortifyx_app/shared/app/widgets/text/text_display_large.dart';
import 'package:sortifyx_app/shared/utils/figma_to_flutter_size.dart';

class ScaffoldItems {
  static PreferredSize appBar(BuildContext context, UserState state,
      GlobalKey<ScaffoldState> scaffoldKey) {
    return PreferredSize(
      preferredSize: const Size(0, 100),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getHeight(40),
        ),
        child: Center(
          child: AppBar(
            elevation: 0,
            primary: false,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: EdgeInsets.only(left: getWidth(30)),
              child: IconButton.filled(
                onPressed: () {
                  // Scaffold.of(context).openDrawer();

                  scaffoldKey.currentState?.openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: Icon(
                  Icons.menu,
                  color: colors(context).tertiaryDefault,
                  size: 24.sp,
                ),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextDisplayLarge(
                  text: state.user.getInitials,
                  alignment: TextAlign.end,
                ),
              ],
            ),
            titleSpacing: getWidth(6),
            centerTitle: true,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: getWidth(30)),
                child: PopupMenuButton(
                  elevation: 2,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: TextDisplayLarge(
                          text: state.user.fullName,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      PopupMenuItem(
                        value: 1,
                        // row has two child icon and text
                        onTap: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.logout,
                              color: colors(context).tertiaryDefault,
                            ),
                            const SizedBox(
                              // sized box with width 10
                              width: 10,
                            ),
                            const TextDisplayLarge(text: "Logout")
                          ],
                        ),
                      ),
                    ];
                  },
                  offset: Offset(0, 5.h),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                      // color: colors(context).secondaryDefault,
                    ),
                    width: getWidth(32),
                    alignment: Alignment.center,
                    // height: getHeight(32),
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    child: GestureDetector(
                      child: SvgPicture.asset("assets/icons/person_avatar.svg"),
                    ),
                  ),
                ),
              )
              // Padding(
              //   padding: EdgeInsets.only(right: getWidth(30)),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8.sp),
              //       // color: colors(context).secondaryDefault,
              //     ),
              //     width: getWidth(32),
              //     // height: getHeight(32),
              //     padding: EdgeInsets.zero,
              //     margin: EdgeInsets.zero,
              //     child: GestureDetector(
              //       child: SvgPicture.asset("assets/icons/person_avatar.svg"),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  static Drawer drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [],
      ),
    );
  }
}
