class Prediction {
  final String className;

  Prediction({required this.className});

  factory Prediction.fromJson(Map<String, dynamic> json) {
    return Prediction(
      className: json['class_name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['class_name'] = className;
    return data;
  }

  @override
  String toString() {
    return 'Prediction(className: $className)';
  }
}