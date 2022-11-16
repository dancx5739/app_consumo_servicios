import 'package:app_consumo_servicios/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 290,
          height: 56,
          margin: const EdgeInsets.only(
            top: 16,
            left: 8,
            right: 8,
            bottom: 28
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColors.blackMain,
              width: 1.5
            )
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Search',
                style: TextStyle(
                  color: AppColors.grayMain,
                  fontSize: 16
                )
              ),

              IconButton(
                onPressed: () {

                },
                icon: const Icon(
                  Icons.search,
                  size: 40,
                  color: AppColors.blackMain
                )
              ),
            ],
          ),
        ),

        const Icon(Icons.filter_alt_rounded, size: 34, color: AppColors.blackMain,)

      ],
    );
  }
}