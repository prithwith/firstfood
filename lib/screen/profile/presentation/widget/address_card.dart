import 'package:fastfood/core/model/user_model.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressCard extends StatelessWidget {
  final UserModel? user;
  final VoidCallback onTapEdit;

  const AddressCard({super.key, required this.user, required this.onTapEdit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: AppColors.colorPrimary,
                    size: 24,
                  ),
                  8.verticalSpace,
                  Text(
                    'Default Shipping Address',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  TextButton(onPressed: onTapEdit, child: const Text('Change')),
                ],
              ),
              8.verticalSpace,
              Text(
                user?.name ?? "NA",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              4.verticalSpace,
              Text(user?.defaultAddressLine1 ?? "NA"),
              Text(user?.defaultAddressLine2 ?? "NA"),
              Text(user?.defaultAddressCity ?? "NA"),
              Text(user?.defaultAddressZip ?? "NA"),
            ],
          ),
        ),
      ),
    );
  }
}
