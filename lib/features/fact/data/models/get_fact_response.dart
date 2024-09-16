import 'dart:convert';

class GetFactResponse {
  final String? fact;
  final int? length;

  GetFactResponse({
    this.fact,
    this.length,
  });

  factory GetFactResponse.fromJson(Map<String, dynamic> json) =>
      GetFactResponse(
        fact: json['fact'],
        length: json['length'],
      );

  factory GetFactResponse.fromRawJson(String str) =>
      GetFactResponse.fromJson(json.decode(str));
}
