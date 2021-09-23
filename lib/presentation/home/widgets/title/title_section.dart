import 'package:flutter/material.dart';
import 'package:flutter_covid/core/widgets/my_text.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyText(
      text: 'Indonesia Covid Cases',
      textType: TextType.headline6,
    );
  }
}
