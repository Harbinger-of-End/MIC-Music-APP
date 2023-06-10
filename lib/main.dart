import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mic_music_app/views/album_view.dart';
import 'package:mic_music_app/utils/brand_colors.dart';
import 'package:mic_music_app/views/singer_view.dart';

void main() {
  runApp(const MICMusicApp());
}

class MICMusicApp extends StatelessWidget {
  const MICMusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Geezo',
        theme: ThemeData(
          textTheme: Typography.englishLike2018.apply(
            fontSizeFactor: 1.sp,
          ),
          // appBarTheme: const AppBarTheme(
          //   backgroundColor: BrandColors.brand2,
          // ),
          scaffoldBackgroundColor: BrandColors.brand2,
        ),
        initialRoute: '/singer',
        routes: {
          '/albums': (context) => const AlbumView(),
          '/singer': (context) => const SingerView(),
        },
      ),
    );
  }
}
