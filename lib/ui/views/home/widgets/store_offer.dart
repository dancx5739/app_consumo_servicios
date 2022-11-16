import 'package:app_consumo_servicios/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class StoreOffer extends StatelessWidget {
  const StoreOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16, left: 16,bottom: 20),
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.backGroudMain
            ),
            child: const Icon(Icons.local_offer_rounded, size: 26),
            
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '50% OFF',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600
                )
              ),
              SizedBox(height: 8),
              Text('an all womens\'s shoes')
            ],
          ),

          Container(
            margin: const EdgeInsets.only(left: 16),
            height: 50,
            width: 50,
            child: const Icon(Icons.navigate_next_outlined, size: 28, color: AppColors.grayMain),
          )

        ],
      ),
    );
  }
}