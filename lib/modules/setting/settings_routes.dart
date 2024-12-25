import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:thingsboard_app/config/routes/router.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';

import 'package:thingsboard_app/modules/main/main_page.dart';
import 'package:thingsboard_app/modules/setting/settings_list_page.dart';
import 'package:thingsboard_app/modules/setting/settings_page.dart';

class  SettingRoutes extends TbRoutes{
  late final settingHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return MainPage(tbContext, path: '/settings');
    },
  );

  late final settingPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SettingsPage(tbContext);
    },
  );

  late final settingListHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      var settingType = params['settingType']?.first;
      String? activeStr = params['active']?.first;
      return SettingsListPage(
        tbContext,
      );
    },
  );

  late final settingDetailsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SettingsPage(tbContext);
      // return SettingDetailsPage(tbContext, params['id'][0]);
    },
  );

  SettingRoutes(TbContext tbContext) : super(tbContext);

  @override
  void doRegisterRoutes(router) {
    router.define('/settings', handler: settingHandler);
    router.define('/settingsPage', handler: settingPageHandler);
    router.define('/settingList', handler: settingListHandler);
    router.define('/setting/:id', handler: settingDetailsHandler);
  }
}