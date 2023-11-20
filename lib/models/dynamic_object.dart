import 'package:ui_challenge_food/models/product_model.dart';

class DynamicObject<T> {
  final T value;
  final bool isSelected;

  DynamicObject({
    required this.value,
    this.isSelected = false,
  });
}

