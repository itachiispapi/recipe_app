import 'package:flutter/material.dart';
import 'details_screen.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(recipe.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (recipe.imageUrl != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    recipe.imageUrl!,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      color: Colors.black12,
                      alignment: Alignment.center,
                      child: const Icon(Icons.image_not_supported),
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 16),
            Text('Ingredients', style: theme.titleLarge),
            const SizedBox(height: 8),
            ...recipe.ingredients.map(
              (ing) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('• '),
                    Expanded(child: Text(ing)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('Instructions', style: theme.titleLarge),
            const SizedBox(height: 8),
            Text(
              recipe.instructions,
              style: theme.bodyLarge,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
