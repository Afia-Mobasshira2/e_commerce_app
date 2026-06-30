import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key, 
    required this.text, 
    required this.selected, 
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
    label: Text(''), 
    selected: selected,
    onSelected: onSelected,
    labelStyle:  TextStyle(color: selected ? TColors.white : null),
    avatar: TCircularContainer(width: 50,height: 50,backgroundColor: Colors.green,),//Avater is bacically icon
    shape: CircleBorder(),
    labelPadding: EdgeInsets.all(0),
    padding: EdgeInsets.all(0),
    selectedColor: Colors.green,
    backgroundColor: Colors.green,
    );
  }
}