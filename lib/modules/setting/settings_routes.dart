import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:thingsboard_app/config/routes/router.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';

import 'package:thingsboard_app/modules/main/main_page.dart';
import 'package:thingsboard_app/modules/setting/settings_EC_page.dart';
import 'package:thingsboard_app/modules/setting/settings_config_page.dart';
import 'package:thingsboard_app/modules/setting/settings_error_page.dart';
import 'package:thingsboard_app/modules/setting/settings_fertilizer_page.dart';
import 'package:thingsboard_app/modules/setting/settings_list_page.dart';
import 'package:thingsboard_app/modules/setting/settings_mixtime_page.dart';
import 'package:thingsboard_app/modules/setting/settings_page.dart';
import 'package:thingsboard_app/modules/setting/settings_sensor_page.dart';

class  SettingRoutes extends TbRoutes{
  late final settingHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      print('go to setting main page');
      return MainPage(tbContext, path: '/settings');
    },
  );

  late final settingPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      print('go to setting page');
      return SettingsPage(tbContext);
    },
  );

  late final settingErrorHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      print('go to setting error page');
      return SettingsErrorPage(tbContext);
    },
  );
  late final settingSensorHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SettingsSensorPage(tbContext);
    },
  );
  late final settingFertilizerHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SettingsFertilizerPage(tbContext);
    },
  );
  late final settingECHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SettingsECPage(tbContext);
    },
  );
  late final settingMixtimeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SettingsMixTimePage(tbContext);
    },
  );
  late final settingConfigHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SettingsConfigPage(tbContext);
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
    router.define('/settingsErrorPage', handler: settingErrorHandler);
    router.define('/settingsSensorPage', handler: settingSensorHandler);
    router.define('/settingsFertilizerPage', handler: settingFertilizerHandler);
    router.define('/settingsECPage', handler: settingECHandler);
    router.define('/settingsMixTimePage', handler: settingMixtimeHandler);
    router.define('/settingsConfigPage', handler: settingConfigHandler);
    router.define('/settingList', handler: settingListHandler);
    router.define('/setting/:id', handler: settingDetailsHandler);
  }
}