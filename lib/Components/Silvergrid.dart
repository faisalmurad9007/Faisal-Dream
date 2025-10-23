import 'package:faisal_dream/model/Products_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../Widget/ContentWidget.dart';

class SlivergridBuilder extends StatelessWidget {
  final List productData;
  const SlivergridBuilder({super.key, required this.productData});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: productData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.w,
        mainAxisSpacing: 5.h,
        mainAxisExtent: 300,
      ),
      itemBuilder: (context, index) {
        var data = products[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              "course",
              arguments: {
                "img": data.image,
                "batch": data.id,
                "siit": data.seat,
                "dis": data.title,
                "course": data.courses,

              },
            );
          },
          child: ContentWidget(
            img: data.image,
            batch: data.id,
            siit: data.seat,
            dis: data.title,
            course: data.courses, courses: '',
            
          ),
        );
      },
    );
  }
}

