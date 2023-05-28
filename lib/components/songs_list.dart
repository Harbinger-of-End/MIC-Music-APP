import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mic_music_app/models/song.dart';

class SongsList extends StatelessWidget {
  final Song song;
  final int index;

  const SongsList({
    super.key,
    required this.song,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 24.sp,
            top: 10.sp,
          ),
          child: Text(
            (index + 1).toString().padLeft(2, '0'),
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 21.sp,
          ),
          child: Image.asset(
            'assets/images/testimage.png',
            width: 50.sp,
            height: 50.sp,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 1.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 20.sp,
                ),
                child: Text(
                  'Nice For What',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.sp,
                  top: 4.sp,
                ),
                child: Text(
                  'Avinci John',
                  style: TextStyle(
                    color: const Color(0xFF817A7A),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(
            right: 24.sp,
          ),
          child: const Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
