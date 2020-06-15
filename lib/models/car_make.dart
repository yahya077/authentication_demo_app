class CarMake {
  int id;
  String title;
  String path;

  CarMake({this.id, this.title, this.path});

  CarMake.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['path'] = this.path;
    return data;
  }
}