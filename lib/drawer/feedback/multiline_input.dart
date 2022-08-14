import 'package:flutter/material.dart';

class MultilineInput extends StatelessWidget {
  const MultilineInput({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: const Offset(0.0, 15.0),
            color: Colors.black.withAlpha(20)
          )
        ]
      ),
      child: const TextField(
        textInputAction: TextInputAction.newline,
        keyboardType: TextInputType.multiline,
        maxLines: 2,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Additional comment',
          hintStyle: TextStyle(
            color: Color(0XFFD9D9D9),
          )
        ),
      ),
    );
  }
}