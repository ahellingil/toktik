import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/social_iconbutton.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialIconButton(
          value: video.likes,
          iconData: Icons.favorite,
          iconColor: Colors.red,
          onPressed: () {},
        ),
        const SizedBox(height: 20),
        SocialIconButton(
          value: video.views,
          iconData: Icons.remove_red_eye_outlined,
          onPressed: () {},
        ),
        const SizedBox(height: 20),
        SpinPerfect(
          // Animación con packete 'animate_do'
          infinite: true,
          duration: const Duration(seconds: 5),
          child: SocialIconButton(
            value: 0,
            iconData: Icons.play_circle_outline,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
