import 'package:flutter/material.dart';
import 'horizontal_gallery.dart';

class CategoryGalleryCard extends HorizontalGalleryWidget {
  const CategoryGalleryCard({
    super.key, 
    required super.item
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.purple[600],
      child: Center(
        child: Text(
          item.title, 
          style: const TextStyle(fontSize: 18, color: Colors.white),
        )
      ),
    );
  }
}
