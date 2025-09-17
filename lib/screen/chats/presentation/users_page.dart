// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/auth/shared/provider.dart';
import 'package:fastfood/screen/chats/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class UsersPage extends ConsumerStatefulWidget {
  const UsersPage({super.key});

  @override
  ConsumerState<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends ConsumerState<UsersPage> {
  @override
  Widget build(BuildContext context) {
    final hive = ref.watch(hiveProvider);
    final authState = ref.watch(authNotifierProvider);
    final state = ref.watch(chatNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.colorWhite),
        backgroundColor: AppColors.colorPrimary,
        title: Text(
          "Chats",
          style: AppTextStyle.rubikTextRegular.copyWith(
            color: AppColors.colorWhite,
          ),
        ),
      ),
      body:
          state.isUserLoading
              ? const Center(child: CircularProgressIndicator())
              : state.usersList.isEmpty
              ? const Center(child: Text("No Users Data Found"))
              : ListView.builder(
                itemCount: state.usersList.length,
                itemBuilder: (BuildContext context, int index) {
                  final user = state.usersList[index];
                  if (user.email == hive.box.get(AppPreferenceKeys.email)) {
                    return const SizedBox.shrink();
                  }

                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5).r,
                    child: ListTile(
                      leading: const CircleAvatar(
                        maxRadius: 30.0,
                        child: Icon(Icons.person),
                      ),
                      title: Text(
                        user.displayName ?? "UNKNOWN NAME",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        user.email ?? '',
                        style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        List<String> ids = [
                          hive.box.get(AppPreferenceKeys.uid),
                          user.userId ?? '',
                        ];
                        ids.sort();
                        final chatRoomId = ids.join();

                        context.pushRoute(
                          ChatRoute(
                            chatRoomId: chatRoomId,
                            reciverId: user.email ?? "",
                            userName: user.displayName ?? "Unknown",
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
    );
  }
}
