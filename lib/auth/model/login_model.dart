class LoginModel {
  String id;
  String SId;
  String fullName;
  String gender;
  String place;
  String tell;
  List<int>? lastScore;
  List<String> studentClass;
  List<String> subjects;
  List<Result>? result;
  String branch;
  String photo;
  String password;
  String role;
  List<String> attendances;
  DateTime createdAt;
  DateTime updatedAt;

  LoginModel({
    required this.id,
    required this.SId,
    required this.fullName,
    required this.gender,
    required this.place,
    required this.tell,
    this.lastScore,
    required this.studentClass,
    required this.subjects,
    this.result,
    required this.branch,
    required this.photo,
    required this.password,
    required this.role,
    required this.attendances,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      id: json['_d'],
      SId: json['Id'],
      fullName: json['FullName'],
      gender: json['Gender'],
      place: json['Place'],
      tell: json['Tell'].toString(),
      lastScore: List<int>.from(json['LastScore']),
      studentClass: List<String>.from(json['Class']),
      subjects: List<String>.from(json['Subjects']),
      result: (json['Result'] as List).map((e) => Result.fromJson(e)).toList(),
      branch: json['Branch'],
      photo: json['Photo'],
      password: json['Password'],
      role: json['Role'],
      attendances: List<String>.from(json['Attendances']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'Id':SId,
      'FullName': fullName,
      'Gender': gender,
      'Place': place,
      'Tell': tell,
      'LastScore': lastScore,
      'Class': studentClass,
      'Subjects': subjects,
      'Result': result?.map((e) => e.toJson()).toList(),
      'Branch': branch,
      'Photo': photo,
      'Password': password,
      'Role': role,
      'Attendances': attendances,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}

class Result {
  String exam;
  List<SubjectResult> results;

  Result({
    required this.exam,
    required this.results,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      exam: json['Exam'],
      results: (json['Results'] as List)
          .map((e) => SubjectResult.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Exam': exam,
      'Results': results.map((e) => e.toJson()).toList(),
    };
  }
}

class SubjectResult {
  String subject;
  int marks;

  SubjectResult({
    required this.subject,
    required this.marks,
  });

  factory SubjectResult.fromJson(Map<String, dynamic> json) {
    return SubjectResult(
      subject: json['subject'],
      marks: json['Marks'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'subject': subject,
      'Marks': marks,
    };
  }
}
