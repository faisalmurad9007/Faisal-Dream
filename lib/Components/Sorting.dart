import 'package:flutter/material.dart';

class Sorting extends StatelessWidget {
  const Sorting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        //space between widgets
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.blueGrey, borderRadius: BorderRadius.circular(10.0)),
            child: const Text(
              "Top",
              style: TextStyle(fontSize: 18.5, color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: const Text(
              "Design",
              style: TextStyle(
                fontSize: 18.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: const Text(
              "Marketing",
              style: TextStyle(
                fontSize: 18.5,fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child:
            Container(height: 20, child: Image.asset("asset/sort.png")),
          ),
        ],
      ),
    );
  }
}
