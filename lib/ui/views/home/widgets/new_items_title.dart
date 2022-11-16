import 'package:flutter/material.dart';

class NewItemsTitle extends StatelessWidget {
  const NewItemsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16, left: 16),
      width: double.infinity,
      height: 40,
      child: const Text('New Items', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),)
    );
  }
}