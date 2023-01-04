// import 'package:flutter/material.dart';
// import 'package:flutter_gif/flutter_gif.dart';
// import 'package:my_site_portfolio/utils/media_archives.dart';
// import 'package:video_player/video_player.dart';
// import 'package:get/get.dart';

// class AnimationButtonController extends GetxController {
//   var text = ''.obs;
//   var imageAsset = ''.obs;

//   void updateText(String value) => text.value = value;
//   void updateImageAsset(String value) => imageAsset.value = value;
// }

// class AnimationButton extends StatefulWidget {
//   final AnimationButtonController controller;
//   const AnimationButton({Key? key, required this.controller}) : super(key: key);
//   @override
//   State<AnimationButton> createState() => _AnimationButtonState();
// }

// class _AnimationButtonState extends State<AnimationButton> {
//   final controller = Get.put(AnimationButtonController());

//   VideoPlayerController? _icon_animatted;

//   @override
//   void initState() {
//     super.initState();
//     _icon_animatted = VideoPlayerController.asset(controller.imageAsset.value)
//       ..initialize().then((context) {
//         _icon_animatted!.setVolume(0);
//         _icon_animatted!.play();
//         _icon_animatted!.setLooping(true);
//         setState(() {});
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Row(
//         children: [
//           Text(controller.text.value),
//           SizedBox(
//             child: SizedBox(
//               height: _icon_animatted?.value.size.height ?? 0,
//               width: _icon_animatted?.value.size.width ?? 0,
//               child: VideoPlayer(_icon_animatted!),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
