
import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/core/entity/entities_base.dart';

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
        appBar: AppBar(
          title: const Text('Cài Đặt'),
        ),
        body: const Center(
          child: Text('Settings Page'),
        ),
     );
   }
 }
