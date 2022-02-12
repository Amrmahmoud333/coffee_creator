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
    required this.cupSize,
    required this.coffeetype,
    required this.orgin,
    required this.roast,
    required this.sugarType,
    required this.sugarAmount,
    required this.flavor,
    required this.extra,
  });

  factory MakeCoffeeModel.fromJson(Map<String, String> json) {
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

  
}
