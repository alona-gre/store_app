// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/feed_item_widget.dart';

class ProductsGrid extends StatefulWidget {
  final List<Product> productList;

  const ProductsGrid({
    Key? key,
    required this.productList,
  }) : super(key: key);

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return widget.productList.isEmpty
        ? const Center(
            child: Text('No data'),
          )
        : GridView.builder(
            controller: _scrollController,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.productList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 0.0,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (ctx, index) {
              return FeedItem(
                product: widget.productList[index],
              );
            });
  }
}
