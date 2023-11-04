class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User(
      {required this.username,
      required this.profileImageUrl,
      required this.subscribers});
}

var currentUser = const User(
  username: "John Doe",
  profileImageUrl: "https://example.com/image.jpg",
  subscribers: "100k",
);

class Video {
  final String title;
  final String id;
  final DateTime timeStamp;
  final String thumbNailUrl;
  final String duration;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.title,
    required this.timeStamp,
    required this.thumbNailUrl,
    required this.duration,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
    required author,
  });
}

final List<Video> Videos = [
  Video(
      id: '1',
      author: currentUser,
      title: 'First video',
      thumbNailUrl: 'https://example.com/video_thumbnail.png',
      timeStamp: DateTime.now(),
      duration: '3:45',
      viewCount: '2M',
      likes: '89K',
      dislikes: '76'),
  Video(
      id: '2',
      title: 'second vid',
      timeStamp: DateTime(2023, 12, 12),
      thumbNailUrl: 'https://example.com/video_thumbnail.png',
      duration: '40:20',
      viewCount: '100k',
      likes: '1k',
      dislikes: '',
      author: 'mimi hapa'),
  Video(
      id: '2',
      author: currentUser,
      title: 'Second video',
      thumbNailUrl: 'https://example.com/second_video_thumbnail.png',
      timeStamp: DateTime.now().subtract(const Duration(days: 1)),
      duration: '2:45',
      viewCount: '1M',
      likes: '50K',
      dislikes: '36'),
  Video(
      id: '3',
      author: currentUser,
      title: 'Third video',
      thumbNailUrl: 'https://example.com/third_video_thumbnail.png',
      timeStamp: DateTime.now().subtract(const Duration(days: 2)),
      duration: '3:45',
      viewCount: '500k',
      likes: '20K',
      dislikes: ''),
];
