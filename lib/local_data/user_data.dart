enum UserShortcut { image, char }

class UserData {
  final String? name;
  final String? email;
  final String? address;
  final UserShortcut? image_or_char;
  final String? image_url;
  final String? first_char;

  UserData({
    required this.name,
    this.email,
    this.address,
    required this.image_or_char,
    this.image_url,
    this.first_char,
  });
}

UserData User = UserData(
  name: "SEDHOM",
  image_or_char: UserShortcut.image,
  image_url: "images/human.png",
);
