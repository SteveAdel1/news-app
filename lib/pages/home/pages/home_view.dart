import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/widgets/custom_background_widget.dart';
import 'package:news_app/core/widgets/custom_drawer.dart';
import 'package:news_app/core/widgets/custom_item_widget.dart';
import 'package:news_app/main.dart';
import 'package:news_app/pages/home/pages/category_view.dart';

import '../../../core/models/category_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<CategoryModel> categoryList = [
    CategoryModel(
      id: "sports",
      title: "Sports",
      image: "assets/images/sports.png",
      backgroundcolor: const Color(0xFFC91C22),
    ),
    CategoryModel(
      id: "General",
      title: "Politics",
      image: "assets/images/politics.png",
      backgroundcolor: const Color(0xFF003E90),
    ),
    CategoryModel(
      id: "health",
      title: "Health",
      image: "assets/images/health.png",
      backgroundcolor: const Color(0xFFED1E79),
    ),
    CategoryModel(
      id: "business",
      title: "Business",
      image: "assets/images/bussines.png",
      backgroundcolor: const Color(0xFFCF7E48),
    ),
    CategoryModel(
      id: "environment",
      title: "Environment",
      image: "assets/images/environment.png",
      backgroundcolor: const Color(0xFF4882CF),
    ),
    CategoryModel(
      id: "science",
      title: "Science",
      image: "assets/images/science.png",
      backgroundcolor: const Color(0xFFF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          title: Text(
            selectedCategory == null ? "News App" : selectedCategory!.title,
            style: Constants.theme.textTheme.titleLarge,
          ),
        ),
        drawer: CustomDrawer(onCategoryDrawerTap: onCategoryDrawerTap ),
        body: selectedCategory == null
            ? Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        "Pick your category \nof inserts",
                        style: Constants.theme.textTheme.bodyLarge
                            ?.copyWith(color: Color(0xFF4F5A69), height: 1.2),
                      ),
                      Expanded(
                        child: GridView.builder(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 20),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  childAspectRatio: 4 / 5),
                          itemBuilder: (context, index) => CustomItemWidget(
                            index: index,
                            categoryModel: categoryList[index],
                            onCategoryClicked: onCategoryClicked,
                          ),
                          itemCount: 6,
                        ),
                      )
                    ]),
              )
            : CategoryView(
                categoryModel: selectedCategory!,
              ),
      ),
    );
  }

  CategoryModel? selectedCategory;

  onCategoryClicked(CategoryModel categoryModel) {
    selectedCategory = categoryModel;
    print(categoryModel.id);
    setState(() {});
  }
  void onCategoryDrawerTap (){
    selectedCategory = null;
    setState(() {

    });
     navigatorKey.currentState!.pop();
  }
}

