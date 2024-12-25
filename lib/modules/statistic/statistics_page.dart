import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thingsboard_app/constants/assets_path.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/core/entity/entities_base.dart';
import 'package:thingsboard_app/modules/dashboard/presentation/controller/dashboard_controller.dart';
import 'package:thingsboard_app/modules/dashboard/presentation/widgets/dashboard_widget.dart';
import 'package:thingsboard_app/modules/home/home_page.dart';
import 'package:thingsboard_app/widgets/tb_app_bar.dart';

class StatisticsPage extends TbPageWidget {
  StatisticsPage(TbContext tbContext, {super.key}) : super(tbContext);

  @override
  State<StatefulWidget> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends TbPageState<StatisticsPage> {
  final PageLinkController _pageLinkController = PageLinkController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TbAppBar(
          leading:
            Builder(
              builder: (context) => IconButton(
                icon: SvgPicture.asset(
                  ThingsboardImage.thingsboard,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          tbContext,
          title:
              const Center(
                child: Text(
                  'Thống Kê',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF175C3B),
                  ),
                ),
              )
        ),
        body: GridView(
          primary: false,
          padding: const EdgeInsets.all(28),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          children: <Widget> [
            Card(
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xFFD8F8C3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(
                      image: AssetImage("assets/images/area.png"),
                      height: 100,
                      width: 100),
                  ListTile(
                    title: const Text('Khu 1',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                        textAlign: TextAlign.center),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardWidget(
                            tbContext,
                            controllerCallback:
                                (DashboardController controller) {},
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xFFD8F8C3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(
                      image: AssetImage("assets/images/area.png"),
                      height: 100,
                      width: 100),
                  ListTile(
                    title: const Text('Khu 2',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                        textAlign: TextAlign.center),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardWidget(
                            tbContext,
                            controllerCallback:
                                (DashboardController controller) {},
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xFFD8F8C3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(
                      image: AssetImage("assets/images/area.png"),
                      height: 100,
                      width: 100),
                  ListTile(
                    title: const Text('Khu 3',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                        textAlign: TextAlign.center),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardWidget(
                            tbContext,
                            controllerCallback:
                                (DashboardController controller) {},
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xFFD8F8C3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(
                      image: AssetImage("assets/images/area.png"),
                      height: 100,
                      width: 100),
                  ListTile(
                    title: const Text('Khu 4',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                        textAlign: TextAlign.center),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardWidget(
                            tbContext,
                            controllerCallback:
                                (DashboardController controller) {},
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xFFD8F8C3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(
                      image: AssetImage("assets/images/warning.png"),
                      height: 100,
                      width: 100),
                  ListTile(
                    title: const Text('Cảnh Báo',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                        textAlign: TextAlign.center),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardWidget(
                            tbContext,
                            controllerCallback:
                                (DashboardController controller) {},
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xFFD8F8C3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(
                      image: AssetImage("assets/images/error.png"),
                      height: 100,
                      width: 100),
                  ListTile(
                    title: const Text('Báo Lỗi',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                        textAlign: TextAlign.center),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardWidget(
                            tbContext,
                            controllerCallback:
                                (DashboardController controller) {},
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  @override
  void dispose() {
    _pageLinkController.dispose();
    super.dispose();
  }
}
