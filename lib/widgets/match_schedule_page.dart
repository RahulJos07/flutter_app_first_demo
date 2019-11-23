import 'package:flutter/material.dart';
import 'package:flutter_app_first/utils/colors.dart';
import 'package:flutter_app_first/widgets/row_match_schedule_list.dart';

class MatchSchedule extends StatefulWidget {
  @override
  _MatchScheduleState createState() => new _MatchScheduleState();
}

class _MatchScheduleState extends State<MatchSchedule> {
  @override
  Widget build(BuildContext context) {
    return MatchScheduleRowFile();
  }
}
