import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/model/fastdelivery_model.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/discover/presentation/widget/fastest_delivery_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FastestDeliveryPage extends ConsumerStatefulWidget {
  final List<FastDeliveryModel> items;
  const FastestDeliveryPage({super.key, required this.items});

  @override
  ConsumerState<FastestDeliveryPage> createState() =>
      _FastestDeliveryPageState();
}

class _FastestDeliveryPageState extends ConsumerState<FastestDeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        iconTheme: IconThemeData(color: AppColors.colorWhite),
        title: Text(
          "All Fastest delivery Food",
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

            return FastestDeliveryCard(
              title: item.title ?? "",
              subtitle: item.subtitle ?? "",
              price: item.price ?? "",
              time: item.time ?? "",
              rating: item.rating ?? "",
              image: item.image ?? "",
              badge: item.badge ?? "",
              onTapCardOpen: () {},
            );
          },
        ),
      ),
    );
  }
}
