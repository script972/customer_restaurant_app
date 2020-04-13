class Media {
  String id;
  String name;
  String url;
  String thumb;
  String icon;
  String size;

  Media() {
    url = "";
    thumb = "";
    icon = "";
  }

  Media.fromJSON(Map<String, dynamic> jsonMap) {
    id = jsonMap['id']?.toString() ?? -1;

    name = jsonMap['name'];
    if (jsonMap['thumb'] != null) {
      thumb = jsonMap['thumb'];
    }
    if (jsonMap['url'] != null) {
      url = jsonMap['url'];
    }
    icon = jsonMap['icon'];

    if(thumb==null && icon!=null){
      thumb = icon;
    } else if(icon==null && thumb!=null){
      icon = thumb;
    }
    size = jsonMap['formated_size'];
  }
}

/*
*
* Category.fromJSON(Map<String, dynamic> jsonMap) {
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
  }*/
