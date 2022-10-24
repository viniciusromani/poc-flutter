import 'package:flutter/material.dart';

/**
 * TODO: it should get receive items by props
 * - items should conform to a protocol (<T>)
 * - it should iterate through list to build screen
 * - it should get title by props too (if it doesn't have it, doesn't show it)
 * - delegate click action
 */
class HorizontalGallery extends StatelessWidget {
  const HorizontalGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categoria',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100,
                  color: Colors.purple[600],
                  child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
                Container(
                  width: 100,
                  color: Colors.purple[500],
                  child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
                Container(
                  width: 100,
                  color: Colors.purple[400],
                  child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
                Container(
                  width: 100,
                  color: Colors.purple[300],
                  child: const Center(child: Text('Item 4', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
              ],
            )
          )
        ]
      )
    );
  }
}
