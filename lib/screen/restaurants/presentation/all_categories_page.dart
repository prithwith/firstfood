import 'package:auto_route/annotations.dart';
import 'package:fastfood/core/model/category_model.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/restaurants/presentation/widget/restaurants_page_category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AllCategoriesPage extends ConsumerStatefulWidget {
  final List<CategoryModel> items;
  const AllCategoriesPage({super.key, required this.items});

  @override
  ConsumerState<AllCategoriesPage> createState() => _AllCategoriesPageState();
}

class _AllCategoriesPageState extends ConsumerState<AllCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final baseState = ref.watch(baseNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        iconTheme: IconThemeData(color: AppColors.colorWhite),
        title: Text(
          "All Categories",
          style: AppTextStyle.rubikTextRegular.copyWith(
            color: AppColors.colorWhite,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10).r,
        child: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            final item = widget.items[index];

            return CategoryCard(
              imagePath: item.imagePath ?? "",
              title: item.title ?? "",
              subtitle: item.subtitle ?? "",
              onTap: () {
                FastestDeliveryRoute(items: baseState.foodItemsList);
              },
            );
          },
        ),
      ),
    );
  }
}
