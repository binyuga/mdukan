import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  bool itemsOfSearchButton = false;
  final _searchBoxController = TextEditingController();
  bool serachBoxFocus = false;

  @override
  void initState() {
    serachBoxFocus = false;
  }

  String search;
  List<String> suggestion = [
    'Parley G',
    'Bourbon',
    'Dairy Milk',
    'Alpanlebe',
    'Gold Flake',
    'Mari Gold'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Container(
        child: SimpleAutoCompleteTextField(
          suggestions: suggestion,
          controller: _searchBoxController,
          style: TextStyle(fontSize: 15),
          clearOnSubmit: false,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              prefix: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Icon(Icons.clear),
                ),
                onTap: () {
                  setState(() {
                    _searchBoxController.text = '';
                    FocusScope.of(context)
                        .requestFocus(new FocusNode()); //remove focus
                    WidgetsBinding.instance.addPostFrameCallback(
                        (_) => _searchBoxController.clear());
                  });
                },
              ),
              suffix: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Icon(Icons.search),
                ),
              ),
              hintText: 'Search',
              border: InputBorder.none),
          textSubmitted: (text) {
            setState(() {
              text != ''
                  ? () {
                      itemsOfSearchButton = true;
                      _searchBoxController.text = text;
                    }()
                  : () {
                      itemsOfSearchButton = false;
                      FocusScope.of(context)
                          .requestFocus(new FocusNode()); //remove focus
                      WidgetsBinding.instance.addPostFrameCallback(
                          (_) => _searchBoxController.clear());
                    }();
            });
          },
        ),
      ),
    );
  }
}
