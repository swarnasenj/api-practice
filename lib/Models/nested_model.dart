
class Nested_model {
  Nested_model({
    int? id,
    String? name,
    String? image,
    String? level,
    dynamic parentId,
    List<Children>? children,
  }) {
    _id = id;
    _name = name;
    _image = image;
    _level = level;
    _parentId = parentId;
    _children = children;
  }

  Nested_model.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _level = json['level'];
    _parentId = json['parentId'];
    if (json['children'] != null) {
      _children = [];
      json['children'].forEach((v) {
        _children?.add(Children.fromJson(v));
      });
    }
  }
  int? _id;
  String? _name;
  String? _image;
  String? _level;
  dynamic _parentId;
  List<Children>? _children;

  int? get id => _id;
  String? get name => _name;
  String? get image => _image;
  String? get level => _level;
  dynamic get parentId => _parentId;
  List<Children>? get children => _children;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['level'] = _level;
    map['parentId'] = _parentId;
    if (_children != null) {
      map['children'] = _children?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Children {
  Children({
    int? id,
    String? name,
    String? image,
    String? level,
    int? parentId,
    List<Children>? children,
  }) {
    _id = id;
    _name = name;
    _image = image;
    _level = level;
    _parentId = parentId;
    _children = children;
  }

  Children.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _level = json['level'];
    _parentId = json['parentId'];
    if (json['children'] != null) {
      _children = [];
      json['children'].forEach((v) {
        _children?.add(Children.fromJson(v));
      });
    }
  }
  int? _id;
  String? _name;
  String? _image;
  String? _level;
  int? _parentId;
  List<Children>? _children;

  int? get id => _id;
  String? get name => _name;
  String? get image => _image;
  String? get level => _level;
  int? get parentId => _parentId;
  List<Children>? get children => _children;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['level'] = _level;
    map['parentId'] = _parentId;
    if (_children != null) {
      map['children'] = _children?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}



class Child {
  Children({
    int? id,
    String? name,
    String? image,
    String? level,
    int? parentId,
  }) {
    _id = id;
    _name = name;
    _image = image;
    _level = level;
    _parentId = parentId;
  }

  Child.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _level = json['level'];
    _parentId = json['parentId'];
  }
  int? _id;
  String? _name;
  String? _image;
  String? _level;
  int? _parentId;

  int? get id => _id;
  String? get name => _name;
  String? get image => _image;
  String? get level => _level;
  int? get parentId => _parentId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['level'] = _level;
    map['parentId'] = _parentId;
    return map;
  }
}
