
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thingsboard_app/constants/assets_path.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/core/entity/entities_base.dart';
import 'package:thingsboard_app/widgets/tb_app_bar.dart';
import 'package:thingsboard_app/widgets/tb_settings_card.dart';

class SettingsPage extends TbPageWidget{
  SettingsPage(TbContext tbContext, {super.key}) : super(tbContext);

  @override
  State<StatefulWidget> createState() => _SettingsPageState();
}
 class _SettingsPageState extends TbPageState<SettingsPage> {
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
                 'Cài Đặt',
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
             TbSettingsCard(
                 cardTitle: 'Lỗi',
                 cardImage: 'assets/images/error.png',
                 cardPath: '/settingsErrorPage',
               onTap: () {
                 navigateTo('/settingsErrorPage');
               },
              ),
              const TbSettingsCard(
                 cardTitle: 'Cảm Biến',
                 cardImage: 'assets/images/sensor.png',
                 cardPath: '/settingsSensorPage',
              ),
              const TbSettingsCard(
                 cardTitle: 'Sục Phân',
                 cardImage: 'assets/images/fertilizer.png',
                cardPath: '/settingsMixTimePage',
              ),
              const TbSettingsCard(
                 cardTitle: 'EC',
                 cardImage: 'assets/images/EC.png',
                 cardPath: '/settingsECPage',
              ),
              const TbSettingsCard(
                 cardTitle: 'Hút Phân',
                 cardImage: 'assets/images/fertilizer_out.png',
                cardPath: '/settingsFertilizerPage',

              ),
              const TbSettingsCard(
                 cardTitle: 'Thông Số ',
                 cardImage: 'assets/images/config.png',
                 cardPath: '/settingsConfigPage',
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
