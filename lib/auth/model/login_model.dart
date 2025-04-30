class LoginModel {
  final String mongoId;
  final String id;
  final String fullName;
  final String gender;
  final String place;
  final int tell;
  final List<int> lastScore;
  final List<String> studentClass;
  final List<String> subjects;
  final String branch;
  final String photo;
  final String password;
  final String role;
  final List<String> attendances;
  final List<String> results;
  final DateTime createdAt;
  final DateTime updatedAt;

  LoginModel({
    required this.mongoId,
    required this.id,
    required this.fullName,
    required this.gender,
    required this.place,
    required this.tell,
    required this.lastScore,
    required this.studentClass,
    required this.subjects,
    required this.branch,
    required this.photo,
    required this.password,
    required this.role,
    required this.attendances,
    required this.results,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      mongoId: json['_id'] ?? '',
      id: json['Id'] ?? '',
      fullName: json['FullName'] ?? '',
      gender: json['Gender'] ?? '',
      place: json['Place'] ?? '',
      tell: json['Tell'] ?? 0,
      lastScore: List<int>.from(json['LastScore'] ?? []),
      studentClass: List<String>.from(json['Class'] ?? []),
      subjects: List<String>.from(json['Subjects'] ?? []),
      branch: json['Branch'] ?? '',
      photo: json['Photo'] ?? '',
      password: json['Password'] ?? '',
      role: json['Role'] ?? '',
      attendances: List<String>.from(json['Attendances'] ?? []),
      results: List<String>.from(json['Results'] ?? []),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': mongoId,
      'Id': id,
      'FullName': fullName,
      'Gender': gender,
      'Place': place,
      'Tell': tell,
      'LastScore': lastScore,
      'Class': studentClass,
      'Subjects': subjects,
      'Branch': branch,
      'Photo': photo,
      'Password': password,
      'Role': role,
      'Attendances': attendances,
      'Results': results,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
