import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/modules/alarm/presentation/view/alarms_page.dart';
import 'package:thingsboard_app/modules/device/devices_list_page.dart';
import 'package:thingsboard_app/modules/device/devices_main_page.dart';
import 'package:thingsboard_app/modules/home/home_page.dart';
import 'package:thingsboard_app/modules/more/more_page.dart';
import 'package:thingsboard_app/modules/setting/settings_page.dart';
import 'package:thingsboard_app/modules/statistic/statistics_page.dart';
import 'package:thingsboard_app/thingsboard_client.dart';

class TbMainNavigationItem {
  final Widget page;
  String title;
  final IconData icon;
  final String path;

  TbMainNavigationItem({
    required this.page,
    required this.title,
    required this.icon,
    required this.path,
  });

  static const mainPageStateMap = <Authority, Set<String>>{
    Authority.SYS_ADMIN: {'/home', '/more'},
    Authority.TENANT_ADMIN: {'/home', '/settings', '/statistics', '/more'},
    Authority.CUSTOMER_USER: {'/home', '/settings', '/statistics', '/more'},
  };

  static bool isMainPageState(TbContext tbContext, String path) {
    if (tbContext.isAuthenticated) {
      return mainPageStateMap[tbContext.tbClient.getAuthUser()!.authority]!
          .contains(path);
    } else {
      return false;
    }
  }

  static List<TbMainNavigationItem> getItems(TbContext tbContext) {
    if (tbContext.isAuthenticated) {
      final items = [
        TbMainNavigationItem(
          page: HomePage(tbContext),
          title: 'Home',
          icon: Icons.home_outlined,
          path: '/home',
        ),
      ];

      switch (tbContext.tbClient.getAuthUser()!.authority) {
        case Authority.SYS_ADMIN:
          break;
        case Authority.TENANT_ADMIN:
          items.addAll(
            [
              TbMainNavigationItem(
                page: StatisticsPage(tbContext),
                title: 'Statistics',
                icon: Icons.bar_chart,
                path: '/statistics',
              ),
              TbMainNavigationItem(
                page: SettingsPage(tbContext),
                title: 'Settings',
                icon: Icons.settings,
                path: '/settings',
              ),
            ],
          );
          break;
        case Authority.CUSTOMER_USER:
          items.addAll(
            [
              TbMainNavigationItem(
                page: StatisticsPage(tbContext),
                title: 'Statistics',
                icon: Icons.bar_chart_outlined,
                path: '/statistics',
              ),
              TbMainNavigationItem(
                page: SettingsPage(tbContext),
                title: 'Settings',
                icon: Icons.settings,
                path: '/settings',
              ),
            ],
          );
          break;
        case Authority.REFRESH_TOKEN:
          break;
        case Authority.ANONYMOUS:
          break;
        case Authority.PRE_VERIFICATION_TOKEN:
          break;

        case Authority.CUSTOMER_MODIFIER:
        // TODO: Handle this case.
      }

      items.add(
        TbMainNavigationItem(
          page: MorePage(tbContext),
          title: 'Account',
          icon: Icons.account_circle_outlined,
          path: '/account',
        ),
      );
      return items;
    } else {
      return [];
    }
  }

  static void changeItemsTitleIntl(
    List<TbMainNavigationItem> items,
    BuildContext context,
  ) {
    for (final item in items) {
      switch (item.path) {
        case '/home':
          item.title = S.of(context).home;
          break;
        case '/statistics':
          item.title = S.of(context).statistics;
          break;
        case '/settings':
          item.title = S.of(context).settings;
          break;
        case '/account':
          item.title = S.of(context).account;
          break;
      }
    }
  }
}
