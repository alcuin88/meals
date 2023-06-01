import 'package:flutter/material.dart';


import 'package:meals/widgets/filter_item.dart';
import 'package:meals/provider/filters_provider.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
      ),
      body: Column(
        children: const [
          FilterItem(
            filter: Filter.glutenFree,
            title: "Gluten-free",
            subtitle: "Only include gluten-free meals.",
          ),
          FilterItem(
            filter: Filter.lactoseFree,
            title: "Lactose-free",
            subtitle: "Only include Lactose-free meals.",
          ),
          FilterItem(
            filter: Filter.vegetarian,
            title: "Vegetarian-free",
            subtitle: "Only include Vegetarian-free meals.",
          ),
          FilterItem(
            filter: Filter.vegan,
            title: "Vegan-free",
            subtitle: "Only include Vegan-free meals.",
          ),
        ],
      ),
    );
  }
}
