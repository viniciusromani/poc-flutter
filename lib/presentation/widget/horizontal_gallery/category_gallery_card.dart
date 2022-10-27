import 'package:flutter/material.dart';
import 'horizontal_gallery.dart';

class CategoryGalleryCard extends HorizontalGalleryWidget {
  CategoryGalleryCard({
    required String picture,
    required String title,
    super.key
  }): super(HorizontalGalleryItem(picture, title));

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
