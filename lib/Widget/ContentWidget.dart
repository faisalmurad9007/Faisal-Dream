import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ContentWidget extends StatelessWidget {
  final String img;
  final String courses;
  final int siit;
  final String? timer;
  final String dis;
  final int batch;


  const ContentWidget({
    super.key,
    required this.img,
    required this.courses,
    required this.siit,
    this.timer,
    required this.dis,
    required this.batch, required int course,


  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Color(0xFFffffff),
          child: Column(
            children: [
              Column(
                children: [
                  Expanded(
                    child: SizedBox(




                        child: Container(
                          width: 180.w,
                          height: 85.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.r),
                              topRight: Radius.circular(10.r),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(img),
                            ),
                          ),
                        ),

                    ),
                  ),
                  Gap(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        color: Color(0xFFd0d5dd),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                
                        child: Padding(
                          padding: EdgeInsets.all(3.sp),
                          child: Text(
                            "ব্যাচ $courses",
                            style: TextStyle(
                              fontSize: 7.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        color: Color(0xFFd0d5dd),
                
                        child: Padding(
                          padding: EdgeInsets.all(3.sp),
                          child: Row(
                            children: [
                              Icon(Icons.groups, size: 10.sp),
                              Gap(5),
                              Text(
                                "$siit সিট বাকি",
                                style: TextStyle(
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                
                      Card(
                        color: Color(0xFFd0d5dd),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.sp),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 10.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              Gap(5),
                              Text(
                                "times দিন বাকি",
                                style: TextStyle(
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(5),
                  Divider(),
                
                  Padding(
                    padding: EdgeInsets.only(left: 10.sp, right: 5.sp),
                    child: AutoSizeText(
                      courses,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: 10.w,
          right: 10.w,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFd0d5dd),
              borderRadius: BorderRadius.circular(4.r),
            ),
            width: 140.w,
            height: 25.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "বিস্তারিত দেখী",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(2.w),
                Icon(Icons.arrow_forward, size: 15.sp),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
