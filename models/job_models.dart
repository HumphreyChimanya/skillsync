class JobModel {
  final String id;
  final String title;
  final String company;
  final String description;

  JobModel({required this.id, required this.title, required this.company, required this.description});

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
        id: json['id'],
        title: json['title'],
        company: json['company'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'company': company,
        'description': description,
      };
}
