import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/asset_image.webp',
        package: 'assets_package');
  }
}

@widgetbook.UseCase(
  name: 'Image test from within package',
  type: MyImageWidget,
)
Widget imageTestUserCase(BuildContext context) => const MyImageWidget();

class SvgSwearEmojiWidget extends StatelessWidget {
  const SvgSwearEmojiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svgs/swear-emoji-smiley-svgrepo-com.svg',
      package: 'assets_package',
    );
  }
}

@widgetbook.UseCase(
  name: 'Svg test from within package',
  type: SvgSwearEmojiWidget,
)
Widget svgTestUserCase(BuildContext context) => const SvgSwearEmojiWidget();
