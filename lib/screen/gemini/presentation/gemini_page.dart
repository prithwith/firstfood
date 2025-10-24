import 'package:fastfood/core/utils/common_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/gemini/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class GeminiPage extends ConsumerStatefulWidget {
  const GeminiPage({super.key});

  @override
  ConsumerState<GeminiPage> createState() => _GeminiPageState();
}

class _GeminiPageState extends ConsumerState<GeminiPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(geminiNotifierProvider);
    final stateNotifier = ref.read(geminiNotifierProvider.notifier);

    return GestureDetector(
      onTap: () => dismissKeyboard(context),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.colorPrimary,
          iconTheme: IconThemeData(color: AppColors.colorWhite),
          title: Text(
            "Gemini Ai",
            style: AppTextStyle.rubikTextMedium.copyWith(
              color: AppColors.colorWhite,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10).r,
          child: Column(
            children: [
              Expanded(
                child: state.isTextloading
                    ? Center(child: CircularProgressIndicator())
                    : state.textChatList.isEmpty
                    ? Center(
                        child: Text(
                          "Let's Start with Gemini\n Ask Your Questions",
                          textAlign: TextAlign.center,
                          style: AppTextStyle.rubikTextRegular.copyWith(
                            fontSize: 20.sp,
                          ),
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.all(12),
                        itemCount: state.textChatList.length,
                        itemBuilder: (context, index) {
                          final message = state.textChatList[index];
                          final isUser = message.role == "user";

                          return Align(
                            alignment: isUser
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 6),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: isUser
                                    ? Colors.blueAccent.withValues(alpha: 0.2)
                                    : Colors.grey.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                message.text ?? '',
                                style: AppTextStyle.rubikTextRegular.copyWith(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
              ),
              Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: stateNotifier.textController,
                        decoration: const InputDecoration(
                          hintText: "Type a message...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    state.isTextloading
                        ? const Padding(
                            padding: EdgeInsets.all(8),
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          )
                        : IconButton(
                            icon: const Icon(Icons.send),
                            onPressed: stateNotifier.getTextInputs,
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
