import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_app/const/global_colors.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
    required TextEditingController textEditingController,
  }) : _textEditingController = textEditingController;

  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: "Search",
          filled: true,
          fillColor: Theme.of(context).cardColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Theme.of(context).cardColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          suffixIcon: Icon(
            IconlyLight.search,
            color: lightIconsColor,
          )),
    );
  }
}
