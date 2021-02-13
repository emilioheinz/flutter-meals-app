import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.screen.dart';
import 'package:meals_app/screens/category_meals.screen.dart';
import 'package:meals_app/screens/filters.screen.dart';
import 'package:meals_app/screens/meal_detail.screen.dart';
import 'package:meals_app/screens/tabs.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 22,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        TabsScreen.routeName: (context) => TabsScreen(),
        CategoriesScreen.routeName: (context) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        FiltersScreen.routeName: (context) => FiltersScreen(),
      },
    );
  }
}
