import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class voiceToTextScreen extends StatefulWidget{
  const voiceToTextScreen({super.key});

  @override
  State<voiceToTextScreen> createState() => _voiceToTextScreen();
}

class _voiceToTextScreen extends State<voiceToTextScreen> {
  String recorded = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF2F4),
      appBar: AppBar(
        backgroundColor: Color(0xffEFF2F4),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: () {} ,),
        title: Center(
          child: Text(
            'Voice to Text',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold
            ),
            ),
        ),
        actions: [
          IconButton(icon: SvgPicture.asset("assets/images/Depth 5, Frame 0.svg",color: Colors.black,), onPressed: () {} ,),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 358.w,
              height: 157.h,
              margin: EdgeInsets.only(bottom: 30.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Colors.white,
              ),
              child: Text(recorded),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: (){},
                backgroundColor: Color(0xff3D99F5),
                child: SvgPicture.asset("assets/images/Group.svg")
                ),
            )
          ],
        ),
        ),
    );
  }
}