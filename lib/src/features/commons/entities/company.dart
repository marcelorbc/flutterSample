class Company {
  final String uid;
  final String name;

  Company({required this.uid, required this.name});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      uid: json['uid'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
        "uid": this.uid,
        "name": this.name,
      };
}
