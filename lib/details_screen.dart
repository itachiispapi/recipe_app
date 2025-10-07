import 'package:flutter/material.dart';
import 'home_screen.dart';

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
        'https://www.jocooks.com/wp-content/uploads/2021/09/garlic-butter-shrimp-1-10.jpg',
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
        'https://cdn.apartmenttherapy.info/image/upload/v1702929602/k/Photo/Recipes/2023-12-honey-garlic-salmon/honey-garlic-salmon-248.jpg',
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
      'In a bowl, combine 3 tbsp flour, 1 tsp garlic powder, 1/2 tsp onion salt, 1/2 tsp seasoned salt, '
      '1 tsp paprika, and 1/2 tsp black pepper. Toss beef until evenly coated. '
      'Heat 2 tbsp olive oil in a heavy pot over medium-high. Brown beef in batches until well seared on at least two sides (about 5–7 min total). Transfer to a plate. '
      'Remove beef and place on separate dish. Reduce heat to medium. Add onion and garlic; sauté until softened (4–5 min). Deglaze with red wine (if using), scraping up browned bits. '
      'Stir in beef stock, tomato paste, Worcestershire, dried rosemary and parsley, the optional fresh rosemary bundle, and the parmesan rind. Return the beef and any juices. '
      'Bring to a boil, then reduce to a gentle simmer and cook 60–90 min until beef is tender. '
      'Vegetables: Add the sliced carrots and celery during the final 30–60 min of simmering to avoid over-softening. '
      'Thicken: Mix cornstarch and water to make a slurry; stir into the stew 5–10 min before finishing and simmer to thicken. '
      'Finish: Increase heat to a low boil and add the gnocchi; cook 3–4 min until they float and are tender. '
      'Serve: Remove the parmesan rind and rosemary bundle. Adjust seasoning with salt and pepper. Serve hot (excellent with cheddar biscuits and herb butter).',
    imageUrl: 'https://i.redd.it/cwhrsy1737681.jpg',
  ),
  Recipe(
    title: 'Spaghetti Carbonara',
    ingredients: [
      '1 lb spaghetti',
      '2 tbsp olive oil',
      '6 oz pancetta or bacon, diced',
      '4 cloves garlic, minced',
      '3 large eggs',
      '1 cup grated Parmesan cheese',
      'Salt and black pepper',
      'Fresh parsley, chopped (optional)'
    ],
    instructions:
        'Cook spaghetti according to package instructions until al dente. Drain and set aside, reserving 1 cup of pasta water. '
        'In a large skillet, heat olive oil over medium heat. Add pancetta or bacon and cook until crispy, about 5-7 minutes. Add garlic and sauté for another minute until fragrant. '
        'In a bowl, whisk together eggs and Parmesan cheese until well combined. '
        'Add the cooked spaghetti to the skillet with pancetta and garlic. Remove from heat and quickly pour in the egg and cheese mixture, tossing rapidly to coat the pasta without scrambling the eggs. '
        'If the sauce is too thick, add reserved pasta water a little at a time until desired consistency is reached. '
        'Season with salt and black pepper to taste. Garnish with chopped parsley if desired and serve immediately.',
    imageUrl: 'https://static01.nyt.com/images/2021/02/14/dining/carbonara-horizontal/carbonara-horizontal-mediumSquareAt3X-v2.jpg'
  ),
  Recipe(
    title: 'Mango Rice Pudding',
    ingredients: [
      '1 cup Arborio rice',
      '4 cups whole milk',
      '1/2 cup sugar',
      '1 tsp vanilla extract',
      '1/2 tsp ground cardamom (optional)',
      '1 ripe mango, peeled and diced',
      'Chopped pistachios or almonds (optional)',
      'Fresh mint leaves (optional)'
    ],
    instructions: 
        'Rinse the Arborio rice under cold water until the water runs clear. '
        'In a large saucepan, combine the rice, whole milk, and sugar. Bring to a gentle boil over medium heat, stirring frequently to prevent sticking. '
        'Reduce heat to low and simmer, uncovered, for about 25-30 minutes, or until the rice is tender and the mixture has thickened. Stir occasionally. '
        'Remove from heat and stir in vanilla extract and ground cardamom (if using). Let it cool slightly. '
        'Once cooled, fold in the diced mango. '
        'Serve warm or chilled, garnished with chopped pistachios or almonds and fresh mint leaves if desired.',
    imageUrl: 'https://tildaricelive.s3.eu-central-1.amazonaws.com/wp-content/uploads/sites/2/2021/04/15131203/ezgif.com-gif-maker-12.jpg'
  )
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
