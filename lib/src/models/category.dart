class Category {
  String id;
  String name;
  String image;

  Category();

  Category.fromJSON(Map<String, dynamic> jsonMap) {
    id = jsonMap['id']?.toString() ?? -1;
    name = jsonMap['name'];
    /* if (json['custom_fields'] != null) {
      customFields = new List<Null>();
      json['custom_fields'].forEach((v) { customFields.add(new Null.fromJson(v)); });
    }*/
    //hasMedia = json['has_media'];
    if (jsonMap['media'] != null && (jsonMap['media'] as List).length > 0) {
      /// media = new List<Null>();
      jsonMap['media'].forEach((v) {
        image = v;
      });
    } else {
      image = "";
    }
  }
}
