import 'package:app_consumo_servicios/ui/theme/app_colors.dart';
import 'package:app_consumo_servicios/ui/views/home/widgets/home_widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: AppColors.backGroudMain,
      appBar: AppBar(
        toolbarHeight: 88,
        // Widget buscador
        title: const SearchBar(),
        backgroundColor: AppColors.backGroudMain,
        elevation: 0,
        // Toma todo el espacio
        titleSpacing: 0,
      ),

      body: ListView(
        children: const [

          StoreCategories(),

          StoreOffer(),

          NewItemsTitle(),

          StoreProducts(),

        ],
      ),

    );
  }
}

