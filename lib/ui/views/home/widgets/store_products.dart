import 'package:app_consumo_servicios/ui/theme/app_colors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class StoreProducts extends StatefulWidget {
const StoreProducts({ Key? key }) : super(key: key);

  @override
  State<StoreProducts> createState() => _StoreProductsState();
}

class _StoreProductsState extends State<StoreProducts> {

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

  Future<void> fetchData() async {
    var dio = Dio();
    final response = await dio.get(
      'https://api.escuelajs.co/api/v1/categories',
      queryParameters: {
        'id': 1,
      },
    );
    
  }

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: double.infinity,
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: 150,
            height: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: NetworkImage('https://acortar.link/LHgMfH'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                const Text('Yellow shirt', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.grayMain)),

                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('\$ 72.00', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                    Icon(Icons.add, size: 28)
                  ],
                )

                

              ],
            ),
          );
        }
      ),
    );
  }
}