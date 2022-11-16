import 'package:app_consumo_servicios/models/response_categories_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class StoreCategories extends StatefulWidget {
  const StoreCategories({
    Key? key,
  }) : super(key: key);

  @override
  State<StoreCategories> createState() => _StoreCategoriesState();
}

class _StoreCategoriesState extends State<StoreCategories> {

  // Se ejecuta primero, antes de construir los widgets
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  // Libera o elimina recursos
  @override
  void dispose() {
    super.dispose();
  }

  ResponseCategoriesModel category = ResponseCategoriesModel();
  List<ResponseCategoriesModel> categories = [];
  

  void fetchData() async {
    var dio = Dio();
    final response = await dio.get(
      'https://api.escuelajs.co/api/v1/categories',
      
    );

    category = ResponseCategoriesModel.fromJson(response.data);

  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {

          // final category = categories[index];

          return Container(
            margin: const EdgeInsets.only(top: 16),
            width: 100,
            height: 130,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: const Image(
                      //image: NetworkImage('${category.image}'),
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQePLeI41zRw8TOs9XMlb18T_2E5kn-KSyKNw&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  //'${category.name}',
                  'Producto',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                  )
                )
              ],
            ),
          );
        }
      ),
    );
  }
}