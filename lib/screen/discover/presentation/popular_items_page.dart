import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/model/popularitems_model.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/discover/presentation/widget/popular_items_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class PopularItemsPage extends ConsumerStatefulWidget {
  final List<PopularitemsModel> items;
  const PopularItemsPage({super.key, required this.items});

  @override
  ConsumerState<PopularItemsPage> createState() => _PopularItemsPageState();
}

class _PopularItemsPageState extends ConsumerState<PopularItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        iconTheme: IconThemeData(color: AppColors.colorWhite),
        title: Text(
          "All Popular Items",
          style: AppTextStyle.rubikTextRegular.copyWith(
            color: AppColors.colorWhite,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).r,
        child: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            final item = widget.items[index];

            return PopularItemsCard(
              imagePath: item.imagePath ?? "",
              title: item.title ?? "",
              subtitle: item.subtitle ?? "",
            );
          },
        ),
      ),
    );
  }
}
