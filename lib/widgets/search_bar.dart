import 'package:flutter/material.dart';
import 'package:econnect/utils/app_style.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({super.key, required this.filterSearchResults});
  final void Function(String value) filterSearchResults;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: (10),
            horizontal: (20),
          ),
          suffixIcon: const Icon(Icons.search),
          hintText: "Search ...",
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Styles.primaryColor, width: (2.5)),
              borderRadius: BorderRadius.circular(50.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Styles.disabledColor, width: (2.5)),
              borderRadius: BorderRadius.circular(50.0)),
        ),
        cursorColor: Styles.titleColor,
        onChanged: (value) {
          filterSearchResults(value);
        },
      ),
    );
  }
}
