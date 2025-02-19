import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CustomDropdownBtn extends StatefulWidget {
  List<String> values;
  double width;

  CustomDropdownBtn({
    super.key,
    required this.values,
    required this.width,
  });

  @override
  State<CustomDropdownBtn> createState() => _CustomDropdownBtnState();
}

class _CustomDropdownBtnState extends State<CustomDropdownBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(38, 38, 38, 0.5),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: widget.width * 0.05),
      child: DropdownButton(
        underline: Container(),
        onChanged: (_) {},
        value: widget.values.first,
        items: widget.values.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }
}
