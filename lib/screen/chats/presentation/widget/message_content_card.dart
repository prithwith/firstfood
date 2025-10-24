import 'dart:io';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageContentCard extends StatelessWidget {
  final String content;
  final bool isSent;
  final bool isPlaying;
  final VoidCallback onTapAudio;
  final PlayerController playerController;

  const MessageContentCard({
    super.key,
    required this.content,
    required this.isSent,
    required this.isPlaying,
    required this.onTapAudio,
    required this.playerController,
  });

  @override
  Widget build(BuildContext context) {
    final isAudio = content.endsWith('.m4a') || content.endsWith('.aac');
    final isImage =
        content.endsWith('.jpg') ||
        content.endsWith('.jpeg') ||
        content.endsWith('.png');

    if (isAudio) {
      return GestureDetector(
        onTap: onTapAudio,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 5.r),
              child: Icon(
                isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                color: isSent ? Colors.white : AppColors.colorPrimaryDeep,
                size: 32.r,
              ),
            ),
            SizedBox(
              width: 150.r,
              child: AudioFileWaveforms(
                size: Size(double.infinity, 30.r),
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

    if (isImage) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Image.file(
          File(content),
          width: 180.r,
          height: 180.r,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => Container(
            width: 180.r,
            height: 180.r,
            color: Colors.grey[700],
            alignment: Alignment.center,
            child: Text(
              'Image not found',
              style: TextStyle(color: AppColors.colorWhite, fontSize: 16.sp),
            ),
          ),
        ),
      );
    }

    return Text(
      content,
      style: TextStyle(color: AppColors.colorWhite, fontSize: 16.sp),
    );
  }
}
