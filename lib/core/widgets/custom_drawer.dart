import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';

class CustomDrawer extends StatelessWidget {
  Function onCategoryDrawerTap ;
   CustomDrawer({super.key,
  required this.onCategoryDrawerTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width*0.8,
      decoration:const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(children: [
        Container(
          alignment: Alignment.center,
          width: Constants.mediaQuery.width,
      height: Constants.mediaQuery.height*0.12,
      color: Constants.theme.primaryColor,
      child:
        Text("News App!",
          style:Constants.theme.textTheme.bodyLarge,
        ),),
        Row(children: [
         const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(Icons.settings_rounded,size: 35,),
          ),
          TextButton(onPressed:() {

          }, child:Text("Settings",
            style: Constants.theme.textTheme.bodyLarge?.copyWith(color: Colors.black),
          ))
        ],),
        Row(children: [
         const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.list_rounded,size: 35,),
          ),
          TextButton(onPressed:() {
            onCategoryDrawerTap();

          }, child:Text("Categories",
            style: Constants.theme.textTheme.bodyLarge?.copyWith(color: Colors.black),
          ))
        ],)
      ]),
    );
  }
}
