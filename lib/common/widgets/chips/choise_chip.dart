import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
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
    final isColor = THelperFunctions.getColor(text) != null;
    return ChoiceChip(
    label: isColor ? const SizedBox() : const Text(''), 
    selected: selected,
    onSelected: onSelected,
    labelStyle:  TextStyle(color: selected ? TColors.white : null),
    avatar: isColor
          ?  TCircularContainer(width: 50,height: 50,backgroundColor: THelperFunctions.getColor(text)!) : null,//Avater is bacically icon
    shape:isColor ? CircleBorder() : null,
    labelPadding: isColor ? const EdgeInsets.all(0) : null,
    padding: EdgeInsets.all(0),
    selectedColor: Colors.green,
    backgroundColor: isColor ? THelperFunctions.getColor(text) ! : null,
    );
  }
}