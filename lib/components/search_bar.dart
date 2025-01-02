import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchLocationBar extends StatelessWidget {
  String hintText;
  dynamic onSubmitted;

  SearchLocationBar(
      {super.key, required this.hintText, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: hintText,
      onSubmitted: onSubmitted,
    );
  }
}
