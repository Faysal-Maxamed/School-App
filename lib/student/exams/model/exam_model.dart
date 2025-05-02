class StudentResults {
  String? sId;
  StudentId? studentId;
  String? exam;
  List<Results>? results;
  String? createdAt;
  String? updatedAt;
  int? iV;

  StudentResults(
      {this.sId,
      this.studentId,
      this.exam,
      this.results,
      this.createdAt,
      this.updatedAt,
      this.iV});

  StudentResults.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    studentId = json['studentId'] != null
        ? new StudentId.fromJson(json['studentId'])
        : null;
    exam = json['Exam'];
    if (json['Results'] != null) {
      results = <Results>[];
      json['Results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.studentId != null) {
      data['studentId'] = this.studentId!.toJson();
    }
    data['Exam'] = this.exam;
    if (this.results != null) {
      data['Results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class StudentId {
  String? sId;
  String? id;
  String? fullName;

  StudentId({this.sId, this.id, this.fullName});

  StudentId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    id = json['Id'];
    fullName = json['FullName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['Id'] = this.id;
    data['FullName'] = this.fullName;
    return data;
  }
}

class Results{
  String? subject;
  int? marks;
  String? sId;

  Results({this.subject, this.marks, this.sId});

  Results.fromJson(Map<String, dynamic> json) {
    subject = json['subject'];
    marks = json['Marks'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subject'] = this.subject;
    data['Marks'] = this.marks;
    data['_id'] = this.sId;
    return data;
  }
}
