import 'package:flutter/material.dart';
import 'package:poc_flutter/presentation/widget/horizontal_gallery/index.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            /**
             * TODO: take a look on https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html
             * to make header slivery and componentize it!
             */
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    'Bem vindo,\nVinicius',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Spacer(),
                  Container(height: 48, width: 48, color: Theme.of(context).colorScheme.primary),
                ],
              ),
            ),
            const SizedBox(height: 36),
            HorizontalGallery(
              title: 'Categoria',
              items: [
                CategoryGalleryCard(
                  item: HorizontalGalleryItem(
                    picture: '', 
                    title: 'Item'
                  )
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
