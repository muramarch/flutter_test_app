import 'package:test_app/models/photo_models.dart';

class User {
  String name;
  String lastname;
  String login;
  String avatarUrl;
  String location;
  List<Photo> photos;

  User({
    required this.name,
    required this.lastname,
    required this.login,
    required this.avatarUrl,
    required this.photos,
    required this.location,
  });
}

final user1 = User(
  name: 'Rodjab',
  lastname: 'Nasri',
  login: 'rodsri',
  avatarUrl: 'assets/images/users/user1.png',
  location: 'Delly, India',
  photos: [
    Photo(url: 'assets/images/photos/dis1.jpg', category: 'love'),
    Photo(url: 'assets/images/photos/dis2.jpg', category: 'winter'),
  ],
);

final jane = User(
  name: 'Jane',
  lastname: 'Coublepott',
  login: 'niceboobs',
  avatarUrl: 'assets/images/users/jane.png',
  location: 'San Francisco, CA',
  photos: [],
);
