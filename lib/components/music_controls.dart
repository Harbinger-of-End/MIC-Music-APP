import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mic_music_app/utils/brand_colors.dart';

class MusicControls extends StatelessWidget {
  const MusicControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          Icons.shuffle_outlined,
          color: BrandColors.neutral1,
          size: 25.sp,
        ),
        Icon(
          Icons.skip_previous_outlined,
          color: BrandColors.neutral1,
          size: 25.sp,
        ),
        Icon(
          Icons.play_circle_outline_sharp,
          color: BrandColors.neutral1,
          size: 80.sp,
          weight: 1.sp,
        ),
        Icon(
          Icons.skip_next_outlined,
          color: BrandColors.neutral1,
          size: 25.sp,
        ),
        Icon(
          Icons.loop_outlined,
          color: Colors.white,
          size: 25.sp,
        ),
      ],
    );
  }
}
