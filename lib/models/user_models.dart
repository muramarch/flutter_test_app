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

final rodjab = User(
  name: 'Rodjab',
  lastname: 'Nasri',
  login: 'rodsri',
  avatarUrl: 'assets/images/users/rodjab.png',
  location: 'Delly, India',
  photos: [
    Photo(url: 'assets/images/photos/dis1d.jpg', category: 'love'),
    Photo(url: 'assets/images/photos/dis2d.jpg', category: 'winter'),
  ],
);

final john = User(
  name: 'John',
  lastname: 'Johnson',
  login: 'jjohnson',
  avatarUrl: 'assets/images/users/john.png',
  location: 'London, UK',
  photos: [
    Photo(url: 'assets/images/photos/dis3d.jpg', category: 'love'),
    Photo(url: 'assets/images/photos/dis4d.jpg', category: 'winter'),
  ],
);

final jane = User(
  name: 'Jane',
  lastname: 'Coublepott',
  login: 'niceboobs',
  avatarUrl: 'assets/images/users/jane.png',
  location: 'San Francisco, CA',
  photos: [
    Photo(url: 'assets/images/photos/dis5d.jpg', category: 'love'),
    Photo(url: 'assets/images/photos/dis6d.jpg', category: 'winter'),
  ],
);

final sindy = User(
  name: 'Sindy',
  lastname: 'Ochkoff',
  login: 'vodkalover',
  avatarUrl: 'assets/images/users/jane.png',
  location: 'Moscow, RUS',
  photos: [
    Photo(url: 'assets/images/photos/dis7d.jpg', category: 'love'),
    Photo(url: 'assets/images/photos/dis8d.jpg', category: 'winter'),
  ],
);
