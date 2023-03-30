
class RegisterDataModel {
  RegisterDataModel({
      required this.id,
      required this.token});

  RegisterDataModel.fromJson(Map<String, dynamic> json) {
    id = json.containsKey('id')? json['id']: null;
    token = json.containsKey('token')? json['token']: null;
  }
  int? id;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['token'] = token;
    return map;
  }

}