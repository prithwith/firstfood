import 'package:fastfood/core/model/user_model.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final UserModel? user;
  const ProfileHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Center(
        child: Column(
          children: [
            // User Avatar
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue.shade100,
              backgroundImage: NetworkImage(user?.profileImageUrl ?? "NA"),
            ),
            const SizedBox(height: 12),
            // User Name
            Text(
              user?.name ?? "NA",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            // Short status or edit prompt
            TextButton.icon(
              icon: const Icon(Icons.edit, size: 16),
              label: const Text('Edit Profile'),
              onPressed: () {
                showToastMessage("Edit Profile Tapped");
              },
            ),
          ],
        ),
      ),
    );
  }
}
