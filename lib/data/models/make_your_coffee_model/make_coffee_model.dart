class MakeCoffeeModel {
  String? cupSize;
  String? coffeeType;
  String? origin;
  String? roast;
  String? sugarType;
  String? sugarAmount;
  String? flavor;
  String? extra;
  MakeCoffeeModel({
    this.cupSize,
     this.coffeeType,
     this.origin,
     this.roast,
     this.sugarType,
     this.sugarAmount,
     this.flavor,
     this.extra,
  });

  factory MakeCoffeeModel.fromJson(Map<String, dynamic> json) {
    return MakeCoffeeModel(
      cupSize: json['cupSize'],
      coffeeType: json['coffeeType'],
      origin: json['origin'],
      roast: json['roast'],
      sugarType: json['sugarType'],
      sugarAmount: json['sugarAmount'],
      flavor: json['flavor'],
      extra: json['extra'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cupSize'] = this.cupSize.toString();
    data['coffeeType'] = this.coffeeType.toString();
    data['origin'] = this.origin.toString();
    data['roast'] = this.roast.toString();
    data['sugarType'] = this.sugarType.toString();
    data['sugarAmount'] = this.sugarAmount.toString();
    data['flavor'] = this.flavor.toString();
    data['extra'] = this.extra.toString();
    return data;
  }
}
