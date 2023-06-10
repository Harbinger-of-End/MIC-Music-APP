import './song.dart';
import './artist.dart';

class Album {
  String title;
  List<Song> songs;
  Artist artist;
  String imageUrl = 'assets/images/testimage.png';

  Album({
    required this.title,
    this.songs = const <Song>[],
    required this.artist,
  });
}
