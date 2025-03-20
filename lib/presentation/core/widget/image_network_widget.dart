import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:todo_app/gen/assets.gen.dart';

class ImageNetworkWidget extends StatelessWidget {
  const ImageNetworkWidget({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.color = Colors.blue,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // final _env = getIt<AppEnvironment>();

    final headers = <String, String>{
      'sec-ch-ua':
          '" Not A;Brand";v="99", "Chromium";v="102", "Google Chrome";v="102"',
      'sec-ch-ua-mobile': '?0',
      'sec-ch-ua-platform': '"Mobile"',
      'user-agent':
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169',
      // 'X-Requested-With': 'com.google.chrome',
    };
    try {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        httpHeaders: headers,
        placeholder: (context, url) => Center(
          child: SpinKitRipple(
            color: color,
          ),
        ),
        errorWidget: (context, url, error) => const Center(
          child: Icon(
            Icons.error,
            color: Colors.white,
          ),
        ),
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      );
    } catch (e) {
      return Padding(
        padding: const EdgeInsets.all(2),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: Assets.images.defaultProduct.image(
            width: 64,
            height: 64,
            color: Colors.white,
          ),
        ),
      );
    }
  }
}

class ImageNetworkProvider extends CachedNetworkImageProvider {
  const ImageNetworkProvider(super.url);
}
