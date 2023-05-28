import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mic_music_app/components/music_controls.dart';
import 'package:mic_music_app/components/songs_list.dart';
import 'package:mic_music_app/models/album.dart';
import 'package:mic_music_app/models/song.dart';
import 'package:mic_music_app/models/artist.dart';

final Album album = Album(
  title: 'LOL',
  artist: Artist(name: 'LOLLL'),
);

final List<Song> songs = <Song>[
  Song(
    title: 'LOL',
    album: album,
  ),
];

class AlbumView extends StatelessWidget {
  const AlbumView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    songs.asMap().forEach(
      (index, song) {
        widgets.add(
          SongsList(
            index: index,
            song: song,
          ),
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 84.sp),
                  child: const MusicControls(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 133.sp,
                    left: 24.sp,
                  ),
                  child: Text(
                    'Rescue me',
                    style: TextStyle(
                      fontSize: 36.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.sp,
                    left: 24.sp,
                  ),
                  child: Text(
                    'One Republic',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    24.sp,
                    24.sp,
                    64.sp,
                    0.0.sp,
                  ),
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    23.sp,
                    36.sp,
                    28.sp,
                    0.0.sp,
                  ),
                  child: const Divider(
                    thickness: 0.5,
                    color: Color(0xFFBDB9B9),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    24.sp,
                    40.sp,
                    24.sp,
                    0.sp,
                  ),
                ),
                ...widgets,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
