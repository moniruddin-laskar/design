class PostModel {
  dynamic id;
  dynamic profileImage;
  dynamic userName;
  dynamic postDate;
  dynamic postTitle;
  dynamic postprofileImage;
  dynamic postDescrption;
  dynamic postFileImage;
  dynamic postLikes;
  dynamic postComments;
  dynamic postStatus;

  PostModel({
    this.id,
    this.profileImage,
    this.userName,
    this.postDate,
    this.postTitle,
    this.postprofileImage,
    this.postDescrption,
    this.postFileImage,
    this.postLikes,
    this.postComments,
    this.postStatus,
  });

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    profileImage = json['profileImage'] ?? "";
    userName = json['userName'] ?? "";
    postDate = json['postDate'] ?? "";
    postTitle = json['postTitle'] ?? "";
    postprofileImage = json['postprofileImage'] ?? "";
    postDescrption = json['postDescrption'] ?? "";
    postFileImage = json['postFileImage'] ?? "";
    postLikes = json['postLikes'] ?? "";
    postComments = json['postComments'] ?? "";
    postStatus = json['postStatus'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['profileImage'] = profileImage;
    data['userName'] = userName;
    data['postDate'] = postDate;
    data['postTitle'] = postTitle;
    data['postprofileImage'] = postprofileImage;
    data['postDescrption'] = postDescrption;
    data['postFileImage'] = postFileImage;
    data['postLikes'] = postLikes;
    data['postComments'] = postComments;
    data['postStatus'] = postStatus;
    return data;
  }
}
