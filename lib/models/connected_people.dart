class ConnectedPeopleModel {
  dynamic id;
  dynamic profileImage;
  dynamic userName;
  dynamic peopleTitle;
  dynamic peopleStatus;

  ConnectedPeopleModel({
    this.id,
    this.profileImage,
    this.userName,
    this.peopleTitle,
    this.peopleStatus,
  });

  ConnectedPeopleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    profileImage = json['profileImage'] ?? "";
    userName = json['userName'] ?? "";
    peopleTitle = json['peopleTitle'] ?? "";
    peopleStatus = json['peopleStatus'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['profileImage'] = profileImage;
    data['userName'] = userName;
    data['peopleTitle'] = peopleTitle;
    data['peopleStatus'] = peopleStatus;
    return data;
  }
}
