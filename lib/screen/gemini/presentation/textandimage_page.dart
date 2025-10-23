import 'dart:io';
import 'package:auto_route/annotations.dart';
import 'package:fastfood/screen/gemini/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class TextandimagePage extends ConsumerStatefulWidget {
  const TextandimagePage({super.key});

  @override
  ConsumerState<TextandimagePage> createState() => _TextandimagePageState();
}

class _TextandimagePageState extends ConsumerState<TextandimagePage> {
  File? imageFile;
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(geminiNotifierProvider);
    final stateNotifier = ref.watch(geminiNotifierProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: stateNotifier.textImageScrollController,
              itemCount: state.textAndImageChat.length,
              padding: const EdgeInsets.only(bottom: 20),
              itemBuilder: (context, index) {
                final item = state.textAndImageChat[index];

                return ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    child: Text(item.role?.substring(0, 1) ?? ""),
                  ),
                  title: Text(item.role ?? ""),
                  subtitle: Text(item.text ?? ""),
                  trailing: item.image == ""
                      ? null
                      : Image.file(File(item.image ?? ""), width: 90),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: stateNotifier.textImageController,
                    decoration: InputDecoration(
                      hintText: "Write a message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.transparent,
                    ),
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_a_photo),
                  onPressed: () async {
                    final XFile? image = await picker.pickImage(
                      source: ImageSource.gallery,
                    );

                    imageFile = image != null ? File(image.path) : null;
                  },
                ),
                IconButton(
                  icon: state.isTextWithImageloading
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.send),
                  onPressed: () {
                    if (imageFile == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Please select an image")),
                      );
                      return;
                    }
                    stateNotifier.fromTextAndImage(
                      query: stateNotifier.textImageController.text,
                      image: imageFile!,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: imageFile != null
          ? Container(
              margin: const EdgeInsets.only(bottom: 80),
              height: 150,
              child: Image.file(imageFile ?? File("")),
            )
          : null,
    );
  }
}
