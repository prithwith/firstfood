import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:flutter/material.dart';

class InfoField extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final bool isEditable;

  const InfoField({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    this.isEditable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.colorPrimary, size: 24),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          if (isEditable)
            IconButton(
              icon: const Icon(Icons.chevron_right, color: Colors.grey),
              onPressed: () {
                showToastMessage('Edit $label Tapped');
              },
            ),
        ],
      ),
    );
  }
}
