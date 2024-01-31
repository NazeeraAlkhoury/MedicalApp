import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:medical_app/core/functions/get_order_state_color.dart';

class CustomOrderStateText extends StatelessWidget {
  // final int index;
  final String state;
  const CustomOrderStateText(
      // this.index,
      {
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      //   orderStataus[index].tr,
      state.tr,
      style: Theme.of(context).textTheme.headline2!.copyWith(
            color: getOrderstateColor(state),
          ),
    );
  }
}
