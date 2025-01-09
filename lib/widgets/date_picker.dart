import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _DatePickerState();
  }
}

class _DatePickerState extends State<DatePicker> {
  int? selectedYear;
  int? selectedMonth;
  int? selectedDay;
  int? selectedHour;
  int? selectedMinute;
  int? selectedSecond;
  bool isSwitched = true;

  final List<int> years = List.generate(100, (index) => DateTime.now().year - index);
  final List<int> months = List.generate(12, (index) => index + 1);
  final List<int> days = List.generate(31, (index) => index + 1);
  final List<int> hours = List.generate(24, (index) => index);
  final List<int> minutes = List.generate(60, (index) => index);
  final List<int> seconds = List.generate(60, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Text('Năm: ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF175C3B),
                            )),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              isExpanded: true,
                              hint: const Text('Chọn Năm'),
                              value: selectedYear,
                              onChanged: isSwitched ? (int? newValue) {
                                setState(() {
                                  selectedYear = newValue;
                                });
                              } : null,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF175C3B),
                              ),
                              items: years.map<DropdownMenuItem<int>>((int year) {
                                return DropdownMenuItem<int>(
                                  value: year,
                                  child: Text(year.toString()),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Tháng: ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF175C3B),
                            )),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              isExpanded: true,
                              hint: const Text('Chọn Tháng'),
                              value: selectedMonth,
                              onChanged: isSwitched ? (int? newValue) {
                                setState(() {
                                  selectedMonth = newValue;
                                });
                              } : null,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF175C3B),
                              ),
                              items: months.map<DropdownMenuItem<int>>((int month) {
                                return DropdownMenuItem<int>(
                                  value: month,
                                  child: Text(month.toString()),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Ngày: ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF175C3B),
                            )),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              isExpanded: true,
                              hint: const Text('Chọn Ngày'),
                              value: selectedDay,
                              onChanged: isSwitched ? (int? newValue) {
                                setState(() {
                                  selectedDay = newValue;
                                });
                              } : null,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF175C3B),
                              ),
                              items: days.map<DropdownMenuItem<int>>((int day) {
                                return DropdownMenuItem<int>(
                                  value: day,
                                  child: Text(day.toString()),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 100),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Text('Giờ: ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF175C3B),
                            )),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              isExpanded: true,
                              hint: const Text('Chọn Giờ'),
                              value: selectedHour,
                              onChanged: isSwitched ? (int? newValue) {
                                setState(() {
                                  selectedHour = newValue;
                                });
                              } : null,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF175C3B),
                              ),
                              items: hours.map<DropdownMenuItem<int>>((int hour) {
                                return DropdownMenuItem<int>(
                                  value: hour,
                                  child: Text(hour.toString()),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Phút: ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF175C3B),
                            )),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              isExpanded: true,
                              hint: const Text('Chọn Phút'),
                              value: selectedMinute,
                              onChanged: isSwitched ? (int? newValue) {
                                setState(() {
                                  selectedMinute = newValue;
                                });
                              } : null,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF175C3B),
                              ),
                              items: minutes.map<DropdownMenuItem<int>>((int minute) {
                                return DropdownMenuItem<int>(
                                  value: minute,
                                  child: Text(minute.toString()),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Giây: ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF175C3B),
                            )),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              isExpanded: true,
                              hint: const Text('Chọn Giây'),
                              value: selectedSecond,
                              onChanged: isSwitched ? (int? newValue) {
                                setState(() {
                                  selectedSecond = newValue;
                                });
                              } : null,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF175C3B),
                              ),
                              items: seconds.map<DropdownMenuItem<int>>((int second) {
                                return DropdownMenuItem<int>(
                                  value: second,
                                  child: Text(second.toString()),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              const Text('Cài Đặt: ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF175C3B),
                  )),
              Expanded(
                  child: Switch(
                    activeColor: Colors.green,
                    activeTrackColor: Colors.orange,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  )),
            ],
          ),
        ],
      ),
    );
  }
}