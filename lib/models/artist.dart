import './album.dart';

class Artist {
  String name;
  List<Album> albums;

  Artist({
    required this.name,
    this.albums = const <Album>[],
  });
}
