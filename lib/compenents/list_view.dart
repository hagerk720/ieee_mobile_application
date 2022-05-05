import 'package:flutter/material.dart';

import 'item_container.dart';

// ignore: must_be_immutable
class IeeeListView extends StatelessWidget {
  const IeeeListView({Key? key, required this.items}) : super(key: key);
  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) => ItemContainer(
          id: items[index].id,
          title: items[index].article.title,
          imageUrl: items[index].article.imageUrl,
          date: items[index].article.date.toString().substring(0, 10), route: '',
        ),
        separatorBuilder: (context, index) => Center(
          child: Container(
            height: 1.0,
            width: 350,
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
