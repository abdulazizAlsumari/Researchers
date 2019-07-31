class ReacercherModel {
  String v;
  String name;
  String subject;
  String about;
  String body;
  int id;
  String added_on;

  ReacercherModel({this.subject,this.about,this.v,this.name, this.body, this.id, this.added_on});

  factory ReacercherModel.fromJson(Map<String, dynamic> json) {
    return ReacercherModel(
      subject: json['subject'],
      about:json['about'],
      name: json['shortCode'],
      body: json['shortCode'],
      id: json['countryId'],
      //added_on: json['added_on'],
    );
  }
}
