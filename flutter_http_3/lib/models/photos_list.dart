class PhotosList {
  var albumId;
  var id;
  var title;
  var url;
  var thumbNailUrl;

  PhotosList.init(
      {this.albumId, this.id, this.title, this.url, this.thumbNailUrl});

  PhotosList.fromJson(Map<String, dynamic> photoMap)
      : albumId = photoMap['albumId'],
        id = photoMap['id'],
        title = photoMap['title'],
        url = photoMap['url'],
        thumbNailUrl = photoMap['thumbNailUrl'];

  @override
  String toString() {
    return 'PhotosList{albumId: $albumId, id: $id, title: $title, url: $url, thumbNailUrl: $thumbNailUrl}';
  }
}
