import 'dart:convert';

class WorkoutModel {
  final String? s;
  final int? n;
  final bool? b;

  WorkoutModel({
    required this.s,
    required this.n,
    required this.b,
  });

  factory WorkoutModel.fromRawJson(String str) =>
      WorkoutModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WorkoutModel.fromJson(dynamic json) => WorkoutModel(
        s: json['s'] == null ? null : json['s'] as String,
        n: json['n'] == null ? null : json['n'] as int,
        b: json['b'] == null ? null : json['b'] as bool,
      );

  Map<String, dynamic> toJson() => {
        's': s,
        'n': n,
        'b': b,
      };
}
