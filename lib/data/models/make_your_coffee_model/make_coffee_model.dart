class MakeCoffeeModel {
  String? cupSize;
  String? coffeetype;
  String? orgin;
  String? roast;
  String? sugarType;
  String? sugarAmount;
  String? flavor;
  String? extra;
  MakeCoffeeModel({
    this.cupSize,
     this.coffeetype,
     this.orgin,
     this.roast,
     this.sugarType,
     this.sugarAmount,
     this.flavor,
     this.extra,
  });

  factory MakeCoffeeModel.fromJson(Map<String, dynamic> json) {
    return MakeCoffeeModel(
      cupSize: json['cupSize'],
      coffeetype: json['coffeetype'],
      orgin: json['orgin'],
      roast: json['roast'],
      sugarType: json['sugarType'],
      sugarAmount: json['sugarAmount'],
      flavor: json['flavor'],
      extra: json['extra'],
    );
  }

  Map<String, String> toJson() {
    final Map<String, String> data = new Map<String, String>();
    data['cupSize'] = this.cupSize.toString();
    data['coffeetype'] = this.coffeetype.toString();
    data['orgin'] = this.orgin.toString();
    data['roast'] = this.roast.toString();
    data['sugarType'] = this.sugarType.toString();
    data['sugarAmount'] = this.sugarAmount.toString();
    data['flavor'] = this.flavor.toString();
    data['extra'] = this.extra.toString();
    return data;
  }
}
