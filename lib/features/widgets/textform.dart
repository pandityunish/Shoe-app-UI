import 'package:flutter/material.dart';

class CostumTextform extends StatelessWidget {
  final String hinttext;
  final Icon iconData;
  const CostumTextform(
      {super.key, required this.hinttext, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextFormField(
          decoration: InputDecoration(
              hintText: hinttext,
              prefixIcon: iconData,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
