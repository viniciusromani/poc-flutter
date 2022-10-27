import 'package:flutter/material.dart';

class HorizontalGalleryItem {
  final String picture;
  final String title;

  HorizontalGalleryItem({
    required this.picture, 
    required this.title
  });
}

/// It should not be visible since it can only extensible via inheritance
abstract class HorizontalGalleryWidget<T extends HorizontalGalleryItem> extends StatelessWidget {
  final T item;
  const HorizontalGalleryWidget({super.key, required this.item});
}

class HorizontalGallery extends StatelessWidget {
  final String title;
  final List<HorizontalGalleryWidget> items;

  const HorizontalGallery({
    super.key, 
    required this.title,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: items,
            )
          )
        ]
      )
    );
  }
}
