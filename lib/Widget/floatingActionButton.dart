// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_shop_app/Widget/dataShearch.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFFFD6969),
      onPressed: () {
        showSearch(context: context, delegate: DataShearch());
      },
      child: const Icon(
        Icons.search,
        color: Color(0xFF2D2E49),
        size: 30,
      ),
    );
  }
}

