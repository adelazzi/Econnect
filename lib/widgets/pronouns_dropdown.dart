import 'package:flutter/material.dart';
import 'package:econnect/utils/app_style.dart';

class PronounsDropDown extends StatefulWidget {
  const PronounsDropDown({super.key});

  @override
  State<PronounsDropDown> createState() => _PronounsDropDownState();
}

class _PronounsDropDownState extends State<PronounsDropDown> {
  List<String> options = <String>[
    'Mr.',
    'Mrs.',
  ];
  String dropdownValue = 'Mr.';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (60),
      width: (90),
      padding: EdgeInsets.all((10)),
      decoration: BoxDecoration(
        border: Border.all(color: Styles.titleColor, width: (2.0)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: Styles.titleColor,
        ),
        elevation: 0,
        underline: Container(
          height: 0,
        ),
        style: Styles.headLineSmall.copyWith(fontWeight: FontWeight.w800),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
