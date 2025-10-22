import 'dart:io';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageContentCard extends StatelessWidget {
  final String content;
  final bool isSent;
  final String recordPath;
  final bool isPlaying;
  final Function() onTapAudio;
  final PlayerController playerController;

  const MessageContentCard({
    super.key,
    required this.content,
    required this.isSent,
    required this.recordPath,
    required this.isPlaying,
    required this.onTapAudio,
    required this.playerController,
  });

  @override
  Widget build(BuildContext context) {
    final isThisMessageActive = recordPath == content;
    final isThisMessagePlaying = isThisMessageActive && isPlaying;

    if (content.endsWith(".m4a") || content.endsWith(".aac")) {
      return GestureDetector(
        onTap: onTapAudio,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 5.0.r),
              child: Icon(
                isThisMessagePlaying
                    ? Icons.pause_circle_filled
                    : Icons.play_circle_fill,
                color: isSent ? Colors.white : AppColors.colorPrimaryDeep,
                size: 30.r,
              ),
            ),
            SizedBox(
              width: 150.r,
              height: 30.0.r,
              child: AudioFileWaveforms(
                size: Size(150.r, 30.0.r),
                playerController: playerController,
                waveformType: WaveformType.fitWidth,
                playerWaveStyle: PlayerWaveStyle(
                  fixedWaveColor: isSent ? Colors.white54 : Colors.black54,
                  liveWaveColor: isSent
                      ? Colors.white
                      : AppColors.colorPrimaryDeep,
                  spacing: 4.0,
                ),
              ),
            ),
          ],
        ),
      );
    }

    if ((content.endsWith(".jpg") ||
        content.endsWith(".jpeg") ||
        content.endsWith(".png"))) {
      return Image.file(
        File(content),
        width: 180,
        height: 180,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Text(
            "Image was deleted from server",
            style: TextStyle(color: AppColors.colorWhite, fontSize: 16.sp),
          );
        },
      );
    }

    return Text(
      content,
      style: TextStyle(color: AppColors.colorWhite, fontSize: 16.sp),
    );
  }
}
