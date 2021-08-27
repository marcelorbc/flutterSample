class User {
  final String uid;
  final String name;
  final String lang;
  final String initials;

  final int id;
  final String nameComplete;
  final String aliais;
  final String document;
  final String email;
  final String image;

  User({required this.lang, required this.initials, required this.uid, required this.name, required this.image, required this.id, required this.nameComplete, required this.aliais, required this.document, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      uid: json['uid'],
      name: json['name'],
      lang: json['lang'],
      initials: json['initials'],
      id: int.parse(json['id']),
      nameComplete: json['nameComplete'],
      aliais: json['aliais'],
      document: json['document'],
      email: json['email'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        "uid": this.uid,
        "name": this.name,
        "lang": this.lang,
        "initials": this.initials,
        "id": id.toString(),
        "nameComplete": nameComplete,
        "aliais": aliais,
        "document": document,
        "email": email,
        "image": image,
      };
}
