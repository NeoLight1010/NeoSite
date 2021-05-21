import 'package:flutter/material.dart';

class DoubleRowTitleList extends StatefulWidget {
  /// Returns a row (2 containers) custom Widget.
  ///
  /// The first container is a Text, and the second one is a Column containing
  /// multiple Texts.
  DoubleRowTitleList({required this.title, required this.list});

  final String title;
  final List<String> list;

  @override
  _DoubleRowTitleListState createState() =>
      _DoubleRowTitleListState(title: this.title, list: this.list);
}

class _DoubleRowTitleListState extends State<DoubleRowTitleList> {
  _DoubleRowTitleListState({required this.title, required this.list});

  String title;
  List<String> list;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: title,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 5,
            child: Text(
              this.title,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _getTextList(this.list),
            ),
          ),
        ],
      ),
    );
  }

  List<Text> _getTextList(List<String> strList) {
    List<Text> list = [];

    for (String string in strList) {
      list.add(Text('- ' + string));
    }

    return list;
  }
}

/// Returns project Card for dev page.
class ProjectItem extends StatelessWidget {
  final String title;

  ProjectItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(title),
        ],
      ),
    );
  }
}
