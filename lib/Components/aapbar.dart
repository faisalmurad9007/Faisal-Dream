import 'package:flutter/material.dart';
class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dashboard_rounded,
              color: Colors.blueGrey,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
            ))
      ],
    );
  }
}
