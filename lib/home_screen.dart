import 'package:flutter/material.dart';
import 'details_screen.dart';

class Recipe {
  final String title;
  final List<String> ingredients;
  final String instructions;
  final String? imageUrl;

  const Recipe({
    required this.title,
    required this.ingredients,
    required this.instructions,
    this.imageUrl,
  });
}

const List<Recipe> kRecipes = [
  Recipe(
    title: 'Garlic Butter Shrimp',
    ingredients: [
      '1 lb shrimp (peeled/deveined)',
      '3 tbsp butter',
      '4 cloves garlic (minced)',
      'Salt & pepper',
      'Lemon juice',
      'Parsley'
    ],
    instructions:
        'Melt butter on medium heat. Add garlic and heat for 30s or until fragrant. Add shrimp, salt, pepper; '
        'cook 2–3 min each side until pink. Serve with a squeeze lemon and parsley.',
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
  ),
  Recipe(
    title: 'Honey Garlic Glazed Salmon',
    ingredients: [
      '2 salmon fillets',
      '1/2 cup honey',
      '4 tbsp brown sugar',
      '4 cloves garlic (minced)',
      '1 tbsp soy sauce',
      '1 tbsp water',
      'Salt, pepper, garlic powder, paprika',
      'Lemon slices',
      'Lemon juice from 1 lemon',
      'Parsley'
    ],
    instructions:
        'Preheat oven to broil (550°F). '
        'Mix honey, brown sugar, lemon juice, garlic, soy sauce, and water in an oven safe pan on medium-high heat. '
        'Pat salmon dry and season generously. Add salmon to the pan and cook for 4-5 min, basting regularly. '
        'Put the pan in the oven and broil for 2-3 min until thickened. '
        'Serve over a salad of your choosing with lemon slices and parsley.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeLCfguvn9T279zgn3uqbsDBFzLiXLZCvntg&s',
  ),
  Recipe(
    title: 'Beef Stew with Gnocchi',
    ingredients: [
      '2 lb beef chuck, cut into 1-inch cubes',
      '3 tbsp all-purpose flour',
      '2 tbsp olive oil',
      '1 whole white onion, diced',
      '4 garlic cloves, minced',
      '3/4 pack rainbow baby carrots, sliced',
      '4 celery stalks, sliced',
      '1/2 cup red wine (optional)',
      '5 cups beef stock or prepared bouillon',
      '3 tbsp tomato paste',
      '4 dashes Worcestershire sauce',
      '1 parmesan rind',
      '1 pack gnocchi (about 16–18 oz)',
      '1 tbsp cornstarch',
      '1 tbsp water',
      'Garlic powder, salt, black pepper, seasoned salt, onion salt, paprika',
      'Dried rosemary, dried parsley',
      'Fresh rosemary bundle, tied (optional)'
    ],
    instructions:
      '1) Dredge: In a bowl, combine 3 tbsp flour, 1 tsp garlic powder, 1/2 tsp onion salt, 1/2 tsp seasoned salt, '
      '1 tsp paprika, and 1/2 tsp black pepper. Toss beef until evenly coated. '
      '2) Sear: Heat 2 tbsp olive oil in a heavy pot over medium-high. Brown beef in batches until well seared on at least two sides (about 5–7 min total). Transfer to a plate. '
      '3) Aromatics: Reduce heat to medium. Add onion and garlic; sauté until softened (4–5 min). Deglaze with red wine (if using), scraping up browned bits; simmer 1 min. '
      '4) Base: Stir in beef stock, tomato paste, Worcestershire, dried rosemary and parsley, the optional fresh rosemary bundle, and the parmesan rind. Return the beef and any juices. '
      'Bring to a boil, then reduce to a gentle simmer and cook 60–90 min until beef is tender. '
      '5) Vegetables: Add the sliced carrots and celery during the final 30–60 min of simmering to avoid over-softening. '
      '6) Thicken: Mix cornstarch and water to make a slurry; stir into the stew 5–10 min before finishing and simmer to thicken. '
      '7) Finish: Increase heat to a low boil and add the gnocchi; cook 3–4 min until they float and are tender. '
      '8) Serve: Remove the parmesan rind and rosemary bundle. Adjust seasoning with salt and pepper. Serve hot (excellent with cheddar biscuits and herb butter).',
    imageUrl: 'https://i.redd.it/cwhrsy1737681.jpg',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openDetails(BuildContext context, Recipe recipe) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailsScreen(recipe: recipe),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Recipes')),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: kRecipes.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final r = kRecipes[index];
          return Card(
            elevation: 1,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              leading: CircleAvatar(
                child: Text(r.title.isNotEmpty ? r.title[0] : '?'),
              ),
              title: Text(
                r.title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('${r.ingredients.length} ingredients'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => _openDetails(context, r),
            ),
          );
        },
      ),
    );
  }
}
