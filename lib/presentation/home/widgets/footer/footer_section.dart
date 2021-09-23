import 'package:flutter/material.dart';
import 'package:flutter_covid/core/widgets/my_text.dart';
import 'package:flutter_covid/di/injection_container.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyText(
      text: 'Data based on ${getIt.get<String>(instanceName: 'BaseUrl')}',
      textType: TextType.bodyText2,
    );
  }
}
