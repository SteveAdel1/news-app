import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/models/category_model.dart';

typedef onCategoryClicked = void Function(CategoryModel)? ;

class CustomItemWidget extends StatelessWidget {
  final int index ;
  final CategoryModel categoryModel;
  final Function? onCategoryClicked ;

  const CustomItemWidget({
    super.key,
    required this.index,
    required this.categoryModel,
    this.onCategoryClicked
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      if(onCategoryClicked==null) return ;
      onCategoryClicked!(categoryModel);
      },
      child: Container(
        decoration: BoxDecoration(
            color: categoryModel.backgroundcolor,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(25),
              topRight:Radius.circular(25),
              bottomRight: index % 2==0 ? Radius.circular(0):Radius.circular(25),
              bottomLeft: index%2!= 0 ? Radius.circular(0):Radius.circular(25),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Image.asset(categoryModel.image,fit: BoxFit.cover,),
             Text(categoryModel.title,style: Constants.theme.textTheme.bodyMedium,),

           ],
        ),
      ),
    );
  }
}
