import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';

import '../../widgets/fertilizer_chanel_config.dart';

class SettingsFertilizerPage extends TbPageWidget {
  SettingsFertilizerPage(TbContext tbContext, {Key? key})
      : super(tbContext, key: key);
  @override
  State<StatefulWidget> createState() {
    return _SettingsFertilizerPageState();
  }
}

class _SettingsFertilizerPageState extends TbPageState<SettingsFertilizerPage> {
  late int configValue;
  late int realValue;
  late int open_close_time;
  late int open_close_time_sideChanel;
  late int timeSub;
  late double amount2Chanel;
  late TextEditingController _controllerConfig;
  late TextEditingController _controllerReal;
  late TextEditingController _controllerOpenCloseTime;
  late TextEditingController _controllerOpenCloseTimeSideChanel;
  late TextEditingController _controllerTimeSub;
  late TextEditingController _controllerAmount2Chanel;

  @override
  void initState() {
    super.initState();
    configValue = 10;
    realValue = 10;
    open_close_time = 10;
    open_close_time_sideChanel = 10;
    timeSub = 10;
    amount2Chanel = 10;
    _controllerConfig = TextEditingController(text: configValue.toString());
    _controllerReal = TextEditingController(text: realValue.toString());
    _controllerOpenCloseTime =
        TextEditingController(text: open_close_time.toString());
    _controllerOpenCloseTimeSideChanel =
        TextEditingController(text: open_close_time_sideChanel.toString());
    _controllerTimeSub = TextEditingController(text: timeSub.toString());
    _controllerAmount2Chanel =
        TextEditingController(text: amount2Chanel.toString());
  }

  @override
  void dispose() {
    _controllerConfig.dispose();
    _controllerReal.dispose();
    _controllerOpenCloseTime.dispose();
    _controllerOpenCloseTimeSideChanel.dispose();
    _controllerTimeSub.dispose();
    _controllerAmount2Chanel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Trang Cài Đặt Hút Phân',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF175C3B),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                const Text(
                  'CHỈNH KÊNH HÚT PHÂN',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF8200),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 90),
                    Text(
                      'Kênh A',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Kênh B',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Kênh C',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Kênh D',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // table increment decrement value
                FertilizerChanelConfig(
                  title: 'Cảm Biến',
                  chanelValueA: 10,
                  chanelValueB: 10,
                  chanelValueC: 10,
                  chanelValueD: 10,
                ),
                const SizedBox(height: 10),
                FertilizerChanelConfig(
                  title: 'Lưu Lượng',
                  chanelValueA: 10,
                  chanelValueB: 10,
                  chanelValueC: 10,
                  chanelValueD: 10,
                ),
                const SizedBox(height: 10),
                FertilizerChanelConfig(
                  title: 'Giá Trị',
                  chanelValueA: 10,
                  chanelValueB: 10,
                  chanelValueC: 10,
                  chanelValueD: 10,
                ),
                const SizedBox(height: 10),
                FertilizerChanelConfig(
                  title: 'Thực Tế',
                  chanelValueA: 10,
                  chanelValueB: 10,
                  chanelValueC: 10,
                  chanelValueD: 10,
                ),

                const SizedBox(height: 20),
                const Text(
                  'Kênh Phụ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF024808),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Cài Đặt',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              alignLabelWithHint: true,
                            ),
                            controller: _controllerConfig,
                            onChanged: (value) {
                              setState(() {
                                configValue = int.parse(value);
                              });
                            })),
                    const SizedBox(width: 20),
                    const Text(
                      'Thực Tế',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              alignLabelWithHint: true,
                            ),
                            controller: _controllerReal,
                            onChanged: (value) {
                              setState(() {
                                realValue = int.parse(value);
                              });
                            })),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'CHÂM THEO LƯU LƯỢNG',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF024808),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Mở Đóng',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF175C3B),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            child: TextField(
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  alignLabelWithHint: true,
                                ),
                                controller: _controllerOpenCloseTime,
                                onChanged: (value) {
                                  setState(() {
                                    open_close_time = int.parse(value);
                                  });
                                })),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Mở Đóng Kênh Phụ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF175C3B),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            child: TextField(
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  alignLabelWithHint: true,
                                ),
                                controller: _controllerOpenCloseTimeSideChanel,
                                onChanged: (value) {
                                  setState(() {
                                    open_close_time_sideChanel =
                                        int.parse(value);
                                  });
                                })),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Thời Gian Trừ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF175C3B),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            child: TextField(
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  alignLabelWithHint: true,
                                ),
                                controller: _controllerTimeSub,
                                onChanged: (value) {
                                  setState(() {
                                    timeSub = int.parse(value);
                                  });
                                })),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Lượng 2 Kênh',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF175C3B),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            child: TextField(
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  alignLabelWithHint: true,
                                ),
                                controller: _controllerAmount2Chanel,
                                onChanged: (value) {
                                  setState(() {
                                    amount2Chanel = double.parse(value);
                                  });
                                })),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
