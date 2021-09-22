import 'package:flutter/material.dart';

import '../style/sizes.dart';
import '../unions/failure.dart';

class MyErrorWidget extends StatelessWidget {
  final Failure failure;
  final Function() onPressed;
  const MyErrorWidget({
    Key? key,
    required this.failure,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _message = Failure.getErrorMessage(failure);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_message),
          SizedBox(
            height: Sizes.height8,
          ),
          OutlinedButton(
            onPressed: () {
              onPressed.call();
            },
            child: Text('Retry'),
          ),
        ],
      ),
    );
  }
}
