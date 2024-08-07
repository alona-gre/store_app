// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/feed_item_widget.dart';

class ProductsGrid extends StatelessWidget {
  final List<Product> productList;
  final VoidCallback onBottomReached;

  const ProductsGrid({
    Key? key,
    required this.productList,
    required this.onBottomReached,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return productList.isEmpty
        ? const Center(
            child: Text('No data'),
          )
        : NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent) {
                onBottomReached();
              }
              return true;
            },
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: productList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (ctx, index) {
                return FeedItem(
                  product: productList[index],
                );
              },
            ),
          );
  }
}
