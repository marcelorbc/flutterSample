class Country {
  final String uid;
  final String name;
  final String lang;
  final String initials;

  Country({required this.uid, required this.name, required this.lang, required this.initials});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      uid: json['uid'],
      name: json['name'],
      lang: json['lang'],
      initials: json['initials'],
    );
  }

  Map<String, dynamic> toJson() => {
        "uid": this.uid,
        "name": this.name,
        "lang": this.lang,
        "initials": this.initials,
      };
}
