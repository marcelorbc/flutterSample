import 'business_model.dart';
import 'company.dart';
import 'country.dart';

class BusinessUnit {
  final Company company;
  final Country country;
  final BusinessModel businessModel;

  BusinessUnit({required this.company, required this.country, required this.businessModel});

  factory BusinessUnit.fromJson(Map<String, dynamic> json) {
    return BusinessUnit(
      company: Company.fromJson(json['company']),
      country: Country.fromJson(json['country']),
      businessModel: BusinessModel.fromJson(json['businessModel']),
    );
  }

  Map<String, dynamic> toJson() => {
        "company": this.company.toJson(),
        "country": this.country.toJson(),
        "businessModel": this.businessModel.toJson(),
      };
}
