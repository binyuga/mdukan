import 'package:flutter/material.dart';

class mDukanChips extends StatelessWidget {
  final bool selected;
  final Function onSelected;
  final String label;
  const mDukanChips({
    Key key,
    this.selected,
    this.onSelected,
    this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        decoration: BoxDecoration(
            color: selected ? Colors.red[900] : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, color: selected ? Colors.white : Colors.grey),
        ),
      ),
    );
  }
}
