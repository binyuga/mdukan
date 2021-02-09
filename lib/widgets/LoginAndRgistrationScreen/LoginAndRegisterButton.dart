import 'package:flutter/material.dart';
import 'package:mdukan/constants/colors/colors.dart';

class LoginAndRegisterButton extends StatelessWidget {
  final String label;
  final Function onClick;
  const LoginAndRegisterButton({Key key, @required this.label, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height / 16,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: Color(0xffBE3500),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
