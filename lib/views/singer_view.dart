import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mic_music_app/models/artist.dart';

import '../models/album.dart';
import '../models/song.dart';
import '../utils/brand_colors.dart';

class SingerView extends StatelessWidget {
  const SingerView({super.key});

  @override
  Widget build(BuildContext context) {
    final Artist artist = Artist(
      name: 'Artist',
    );
    final List<Album> albums = [];
    final List<Song> songs = [];

    for (int i = 0; i < 5; i++) {
      albums.add(
        Album(
          title: 'Album',
          artist: artist,
        ),
      );
      songs.add(
        Song(
          album: albums[0],
          title: 'Song',
        ),
      );
    }

    final List<Widget> songList = songs
        .map(
          (song) => Padding(
            padding: EdgeInsets.only(
              left: 24.sp,
              top: 20.sp,
            ),
            child: SizedBox(
              width: 327.w,
              height: 37.h,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    song.album.imageUrl,
                    width: 32.w,
                    height: 32.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.sp,
                      top: 2.sp,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          song.title,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: BrandColors.neutral1,
                          ),
                        ),
                        Text(
                          song.album.artist.name,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color(0xFF71737B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: IconButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        .toList();

    final List<Widget> albumList = albums
        .map(
          (album) => Container(
            width: 88.w,
            height: 88.h,
            margin: EdgeInsets.only(
              right: 20.sp,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  album.imageUrl,
                ),
              ),
            ),
            child: Center(
              child: Text(
                album.title,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18.sp,
                  color: BrandColors.neutral1,
                ),
              ),
            ),
          ),
        )
        .toList();

    final List<Widget> mvList = songs
        .map(
          (song) => Padding(
            padding: EdgeInsets.only(
              left: 24.sp,
              top: 20.sp,
            ),
            child: SizedBox(
              width: 327.w,
              height: 56.h,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Image.asset(
                      song.album.imageUrl,
                      width: 80.w,
                      height: 56.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.sp,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 9.sp,
                          ),
                          child: Text(
                            song.title,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color: BrandColors.neutral1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.sp,
                          ),
                          child: Text(
                            song.album.artist.name,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: const Color(0xFF71737B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: IconButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        .toList();

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/testimage.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: BrandColors.neutral1,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.sp,
                      left: 24.sp,
                    ),
                    child: Text(
                      'Suji Wong',
                      style: TextStyle(
                        color: BrandColors.neutral1,
                        fontFamily: 'Roboto',
                        fontSize: 36.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12.sp,
                      left: 26.sp,
                    ),
                    child: Container(
                      height: 28.sp,
                      width: 96.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: BrandColors.brand1,
                      ),
                      child: Center(
                        child: Text(
                          'Follow +',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Roboto',
                            color: BrandColors.neutral3,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 40.sp,
                      top: 32.sp,
                    ),
                    child: SizedBox(
                      height: 41.sp,
                      width: 295.sp,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                '22',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: BrandColors.neutral1,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 2.sp,
                                ),
                                child: Text(
                                  'Playlist',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.sp,
                                    color: BrandColors.neutral1,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                '360K',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: BrandColors.neutral1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 2.sp,
                                ),
                                child: Text(
                                  'Followers',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: BrandColors.neutral1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                '56',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: BrandColors.neutral1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 2.sp,
                                ),
                                child: Text(
                                  'Following',
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 14.sp,
                                    color: BrandColors.neutral1,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.sp,
                      top: 36.sp,
                      right: 64.sp,
                    ),
                    child: SizedBox(
                      height: 72.h,
                      width: 287.w,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: Text(
                              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it',
                              style: TextStyle(
                                color: BrandColors.neutral1,
                                fontFamily: 'Roboto',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 3.sp,
                            left: 184.sp,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Show more',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFF71737B),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xFF71737B),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      24.sp,
                      36.sp,
                      24.sp,
                      0.sp,
                    ),
                    child: const Divider(
                      thickness: 0.5,
                      color: Color(0xFFBDB9B9),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.sp,
                      top: 36.sp,
                    ),
                    child: Text(
                      'Song',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto',
                        color: BrandColors.neutral1,
                      ),
                    ),
                  ),
                  ...songList,
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40.sp,
                      left: 24.sp,
                    ),
                    child: Text(
                      'Albums',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: BrandColors.neutral1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.sp,
                      left: 24.sp,
                    ),
                    child: SizedBox(
                      height: 88.h,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: albumList,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40.sp,
                      left: 24.sp,
                    ),
                    child: Text(
                      'MV',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: BrandColors.neutral1,
                      ),
                    ),
                  ),
                  ...mvList,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
