import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';

class StatisticsListPage extends TbPageWidget{
StatisticsListPage(TbContext tbContext, {super.key}) : super(tbContext);
@override
State<StatefulWidget> createState() => _StatisticsListPageState();
}
class _StatisticsListPageState extends TbPageState<StatisticsListPage> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Thống Kê'),
),
body: const Center(
child: Text('Statistics List Page'),
),
);
}
}