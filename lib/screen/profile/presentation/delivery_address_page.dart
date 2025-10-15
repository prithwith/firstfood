// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/profile/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class DeliveryAddressPage extends ConsumerStatefulWidget {
  const DeliveryAddressPage({super.key});

  @override
  ConsumerState<DeliveryAddressPage> createState() =>
      _DeliveryAddressPageState();
}

class _DeliveryAddressPageState extends ConsumerState<DeliveryAddressPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(profileNotifierProvider.notifier);

      stateNotifier.getAllAddress();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileNotifierProvider);
    final stateNotifier = ref.watch(profileNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        iconTheme: IconThemeData(color: AppColors.colorWhite),
        title: Text(
          "Delivery Address",
          style: AppTextStyle.rubikTextRegular.copyWith(
            color: AppColors.colorWhite,
          ),
        ),
      ),
      body: state.isAddressLoading
          ? CircularProgressIndicator()
          : state.addressList.isEmpty
          ? Center(child: Text("No Address Found"))
          : ListView.builder(
              itemCount: state.addressList.length,
              itemBuilder: (BuildContext context, int index) {
                final address = state.addressList[index];

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12).r,
                  ),
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 12,
                  ).r,
                  child: Padding(
                    padding: const EdgeInsets.all(10).r,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              address.name ?? "No Name",
                              style: AppTextStyle.rubikTextBold.copyWith(
                                fontSize: 18.sp,
                              ),
                            ),
                            6.verticalSpace,
                            Text("Number: ${address.number ?? '-'}"),
                            Text("Address: ${address.address ?? '-'}"),
                            Text("City: ${address.city ?? '-'}"),
                            Text("State: ${address.state ?? '-'}"),
                            Text("Pincode: ${address.pincode ?? '-'}"),
                            Text("Landmark: ${address.landmark ?? '-'}"),
                          ],
                        ),
                        address.isPrimary
                            ? Text(
                                "Primary",
                                style: AppTextStyle.rubikTextMedium.copyWith(
                                  color: AppColors.colorPrimary,
                                ),
                              )
                            : PopupMenuButton<String>(
                                icon: Icon(Icons.more_vert),
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuEntry<String>>[
                                      PopupMenuItem<String>(
                                        onTap: () {
                                          stateNotifier.updateAddress(
                                            id: address.id ?? "",
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.edit,
                                              color: Colors.blue,
                                            ),
                                            5.horizontalSpace,
                                            Text('Set As Primary'),
                                          ],
                                        ),
                                      ),
                                      PopupMenuItem<String>(
                                        onTap: () {
                                          stateNotifier.deleteAddress(
                                            id: address.id ?? "",
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.delete,
                                              color: Colors.deepOrange,
                                            ),
                                            5.horizontalSpace,
                                            Text('Delete'),
                                          ],
                                        ),
                                      ),
                                    ],
                              ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
