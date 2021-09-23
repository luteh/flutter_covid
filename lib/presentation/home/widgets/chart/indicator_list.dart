import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'indicator_item.dart';

class IndicatorList extends StatelessWidget {
  const IndicatorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        IndicatorItem(
          color: Color(0xff0293ee),
          text: 'Confirmed',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
        IndicatorItem(
          color: Color(0xfff8b250),
          text: 'Death',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
        IndicatorItem(
          color: Color(0xff845bef),
          text: 'Active',
          isSquare: true,
        ),
        SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
