import 'package:flutter/material.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/utils.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({super.key});

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    List<StoryItem> storyItems = [
      StoryItem.pageImage(
        url: "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
        controller: controller,
        imageFit: BoxFit.cover,
        duration: const Duration(seconds: 10)
      ),
    ];
    return StoryView(
      controller: controller,
      repeat: true,
      onStoryShow: (s) {},
      onComplete: () {},
      onVerticalSwipeComplete: (direction) {
        if (direction == Direction.down) {
          Navigator.pop(context);
        }
      },
      storyItems:
          storyItems, // To disable vertical swipe gestures, ignore this parameter.
      // Preferrably for inline story view.
    );
  }
}
