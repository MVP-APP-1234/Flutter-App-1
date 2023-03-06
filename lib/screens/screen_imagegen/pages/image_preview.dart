import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

import '../../../widgets/gradiant_button_with_text.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({super.key, required this.prompt, this.length});
  final String prompt;
  final int? length;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    saveImage(url) async {
      Directory tempDir = await getTemporaryDirectory();
      final path = '${tempDir.path}/myfile.jpg';
      await Dio().download(url, path);
      await GallerySaver.saveImage(path);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(milliseconds: 500),
          margin: EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          content: Text('Downloaded Successfully'),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 5,
                        spreadRadius: 5,
                        color: Colors.grey.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: PinchZoom(
                    resetDuration: const Duration(milliseconds: 100),
                    maxScale: 2.5,
                    child: Image.network(
                      prompt,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 35,
                      width: 35,
                      padding: const EdgeInsets.only(left: 7),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding * 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: GradiantButtonWithText(
                title: 'Download',
                onPressed: () {
                  saveImage(prompt);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
