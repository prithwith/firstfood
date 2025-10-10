// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void imageSelectionDialog(
  BuildContext context, {
  Function(String?)? onTapCamera,
  Function(String?)? onTapGellary,
  Function(String?)? onTapDelete,
}) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library, color: Colors.blue),
              title: const Text("Choose from Gallery"),
              onTap: () async {
                context.maybePop();
                final picker = ImagePicker();
                final XFile? pickedFile = await picker.pickImage(
                  source: ImageSource.gallery,
                );

                if (pickedFile != null) {
                  onTapCamera?.call(pickedFile.path);
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt, color: Colors.black),
              title: const Text("Take a Photo"),
              onTap: () async {
                context.maybePop();
                final picker = ImagePicker();
                final XFile? pickedFile = await picker.pickImage(
                  source: ImageSource.camera,
                );

                if (pickedFile != null) {
                  onTapGellary?.call(pickedFile.path);
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete, color: Colors.red),
              title: const Text("Remove Photo"),
              onTap: () {
                onTapDelete?.call("");
                context.maybePop();
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text("Cancel"),
              onTap: () => context.maybePop(),
            ),
          ],
        ),
      );
    },
  );
}
