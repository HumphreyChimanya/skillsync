class ApplicationModel {
  final String id;
  final String userId;
  final String jobId;
  final String status; // applied, reviewed, accepted, rejected

  ApplicationModel({required this.id, required this.userId, required this.jobId, required this.status});

  factory ApplicationModel.fromJson(Map<String, dynamic> json) => ApplicationModel(
        id: json['id'],
        userId: json['userId'],
        jobId: json['jobId'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'jobId': jobId,
        'status': status,
      };
}
