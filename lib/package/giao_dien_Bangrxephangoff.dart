import 'package:flutter/material.dart';
import 'package:game/data/dataoff.dart';
import 'package:game/components/entry_widget.dart';



class SetGiaoDien_Off extends StatefulWidget {
  const SetGiaoDien_Off({super.key});

  @override
  State<SetGiaoDien_Off> createState() => _SetGiaoDien_OffState();
}

class _SetGiaoDien_OffState extends State<SetGiaoDien_Off> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      body: ListView.builder(
          itemCount: lstStation.length,
          itemBuilder: (BuildContext context, index) {
            return GetGiaoDien_RankOff(a: lstStation[index]);
          }),
    ));
  }
}
