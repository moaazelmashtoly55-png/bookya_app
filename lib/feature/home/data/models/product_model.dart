class productModel {
  Data? _data;
  String? _message;
  
  int? _status;

  productModel({Data? data, String? message,  int? status}) {
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

  productModel.fromJson(Map<String, dynamic> json) {
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
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
  List<Products>? _products;

  Data({List<Products>? products}) {
    if (products != null) {
      _products = products;
    }
  }

  List<Products>? get products => _products;
  set products(List<Products>? products) => _products = products;

  Data.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      _products = <Products>[];
      json['products'].forEach((v) {
        _products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_products != null) {
      data['products'] = _products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? _id;
  String? _name;
  String? _description;
  String? _price;
  int? _discount;
  double? _priceAfterDiscount;
  int? _stock;
  int? _bestSeller;
  String? _image;
  String? _category;

  Products(
      {int? id,
      String? name,
      String? description,
      String? price,
      int? discount,
      double? priceAfterDiscount,
      int? stock,
      int? bestSeller,
      String? image,
      String? category}) {
    if (id != null) {
      _id = id;
    }
    if (name != null) {
      _name = name;
    }
    if (description != null) {
      _description = description;
    }
    if (price != null) {
      _price = price;
    }
    if (discount != null) {
      _discount = discount;
    }
    if (priceAfterDiscount != null) {
      _priceAfterDiscount = priceAfterDiscount;
    }
    if (stock != null) {
      _stock = stock;
    }
    if (bestSeller != null) {
      _bestSeller = bestSeller;
    }
    if (image != null) {
      _image = image;
    }
    if (category != null) {
      _category = category;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get price => _price;
  set price(String? price) => _price = price;
  int? get discount => _discount;
  set discount(int? discount) => _discount = discount;
  double? get priceAfterDiscount => _priceAfterDiscount;
  set priceAfterDiscount(double? priceAfterDiscount) =>
      _priceAfterDiscount = priceAfterDiscount;
  int? get stock => _stock;
  set stock(int? stock) => _stock = stock;
  int? get bestSeller => _bestSeller;
  set bestSeller(int? bestSeller) => _bestSeller = bestSeller;
  String? get image => _image;
  set image(String? image) => _image = image;
  String? get category => _category;
  set category(String? category) => _category = category;

  Products.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _discount = json['discount'];
    _priceAfterDiscount = json['price_after_discount'];
    _stock = json['stock'];
    _bestSeller = json['best_seller'];
    _image = json['image'];
    _category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['name'] = _name;
    data['description'] = _description;
    data['price'] = _price;
    data['discount'] = _discount;
    data['price_after_discount'] = _priceAfterDiscount;
    data['stock'] = _stock;
    data['best_seller'] = _bestSeller;
    data['image'] = _image;
    data['category'] = _category;
    return data;
  }
}