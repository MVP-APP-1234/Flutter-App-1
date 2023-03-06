import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_bar_with_back_and_search.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screen_imagegen/pages/image_preview.dart';

class ImageGenerated extends StatelessWidget {
  const ImageGenerated(
      {super.key,
      required this.prompt,
      required this.length,
      required this.text});
  final List<String>? prompt;
  final int? length;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithBackAndSearch(context, () {
        Navigator.of(context).pop();
      }),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding + 10),
          child: Column(
            children: [
              const SizedBox(height: defaultPadding * 2),
              Text(
                '"$text"',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: defaultPadding),
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 5,
                            color: Colors.grey.withOpacity(0.23),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ImagePreview(
                                  prompt: prompt![index],
                                  length: length,
                                ),
                              ),
                            );
                          },
                          child: Image.network(
                            prompt![index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
