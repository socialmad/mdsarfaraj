class BlogModel {
  String? image;
  String? title;
  String? body;
  String? url;

  BlogModel({
    this.image,
    this.title,
    this.body,
    this.url,
  });

  BlogModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    body = json['body'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image'] = image;
    data['title'] = title;
    data['body'] = body;
    data['url'] = url;
    return data;
  }
}
