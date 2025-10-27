class sliderModel {
  Data? _data;
  String? _message;
  int? _status;

  sliderModel({Data? data, String? message, int? status}) {
    if (data != null) {
      _data = data;
    }
    if (message != null) {
      _message = message;
    }
    
    if (status != null) {
      _status = status;
    }
  }

  Data? get data => _data;
  set data(Data? data) => _data = data;
  String? get message => _message;
  set message(String? message) => _message = message;
  int? get status => _status;
  set status(int? status) => _status = status;

  sliderModel.fromJson(Map<String, dynamic> json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
    
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_data != null) {
      data['data'] = _data!.toJson();
    }
    data['message'] = _message;
    
    data['status'] = _status;
    return data;
  }
}

class Data {
  List<Sliders>? _sliders;

  Data({List<Sliders>? sliders}) {
    if (sliders != null) {
      _sliders = sliders;
    }
  }

  List<Sliders>? get sliders => _sliders;
  set sliders(List<Sliders>? sliders) => _sliders = sliders;

  Data.fromJson(Map<String, dynamic> json) {
    if (json['sliders'] != null) {
      _sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        _sliders!.add(Sliders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_sliders != null) {
      data['sliders'] = _sliders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sliders {
  String? _image;

  Sliders({String? image}) {
    if (image != null) {
      _image = image;
    }
  }

  String? get image => _image;
  set image(String? image) => _image = image;

  Sliders.fromJson(Map<String, dynamic> json) {
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = _image;
    return data;
  }
}