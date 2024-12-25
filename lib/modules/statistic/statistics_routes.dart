import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:thingsboard_app/config/routes/router.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/modules/main/main_page.dart';
import 'package:thingsboard_app/modules/statistic/statistics_list_page.dart';
import 'package:thingsboard_app/modules/statistic/statistics_page.dart';

class StatisticsRoutes extends TbRoutes {
  late final statisticsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return MainPage(tbContext, path: '/statistics');
    },
  );

  late final statisticsPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return StatisticsPage(tbContext);
    },
  );

  late final statisticsListHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      var searchMode = params['search']?.first == 'true';
      var statisticType = params['statisticType']?.first;
      String? activeStr = params['active']?.first;
      bool? active = activeStr != null ? activeStr == 'true' : null;
      return StatisticsListPage(
        tbContext,
      );
    },
  );

  late final statisticsDetailsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      // return StatisticsDetailsPage(tbContext, params['id'][0]);
      return StatisticsPage(tbContext);
    },
  );

  StatisticsRoutes(TbContext tbContext) : super(tbContext);

  @override
  void doRegisterRoutes(router) {
    router.define('/statistics', handler: statisticsHandler);
    router.define('/statisticsPage', handler: statisticsPageHandler);
    router.define('/statisticsList', handler: statisticsListHandler);
    router.define('/statistics/:id', handler: statisticsDetailsHandler);
  }
}