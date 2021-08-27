class BusinessModel {
  final String uid;
  final int sequence;
  final String name;

  BusinessModel({required this.sequence, required this.uid, required this.name});

  factory BusinessModel.fromJson(Map<String, dynamic> json) {
    return BusinessModel(
      uid: json['uid'],
      name: json['name'],
      sequence: int.parse(json['sequence']),
    );
  }

  Map<String, dynamic> toJson() => {
        "uid": this.uid,
        "name": this.name,
        "sequence": this.sequence.toString(),
      };
}
