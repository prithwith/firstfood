import 'package:auto_route/annotations.dart';
import 'package:fastfood/screen/gemini/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class TextPage extends ConsumerStatefulWidget {
  const TextPage({super.key});

  @override
  ConsumerState<TextPage> createState() => _TextPageState();
}

class _TextPageState extends ConsumerState<TextPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(geminiNotifierProvider);
    final stateNotifier = ref.watch(geminiNotifierProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: stateNotifier.textScrollController,
              itemCount: state.textChat.length,
              padding: const EdgeInsets.only(bottom: 20),
              itemBuilder: (context, index) {
                final item = state.textChat[index];

                return ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    child: Text(item.role?.substring(0, 1) ?? ""),
                  ),
                  title: Text(item.role ?? ""),
                  subtitle: Text(item.text ?? ""),
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
                    controller: stateNotifier.textController,
                    decoration: InputDecoration(
                      hintText: "Type a message",
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
                  icon: state.isTextloading
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.send),
                  onPressed: () {
                    stateNotifier.fromText(
                      query: stateNotifier.textController.text,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
