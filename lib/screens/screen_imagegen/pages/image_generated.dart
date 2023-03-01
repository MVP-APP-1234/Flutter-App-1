import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen_imagegen/screen_imagegen.dart';

import '../../../constants/app_bar_with_back_and_title.dart';
import '../../../constants/constants.dart';

class ImageGenerated extends StatelessWidget {
  const ImageGenerated({super.key, required this.prompt, required this.length});
  final List<String>? prompt;
  final int? length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithBackArrowAndTitle(
        context: context,
        text: 'Image Generated',
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ScreenImageGen(),
            ),
          );
        },
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Container(
                margin: const EdgeInsets.only(top: defaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ],
                ),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        // Text(
                        //   widget.text,
                        //   style: const TextStyle(fontSize: 13),
                        // ),
                        Image.network(
                          prompt![index],
                          fit: BoxFit.cover,
                        ),
                        // const SizedBox(height: 10),
                        // Row(
                        //   children: [
                        //     // Text(
                        //     //   widget.text
                        //     //       .toString()
                        //     //       .split(' ')
                        //     //       .length
                        //     //       .toString(),
                        //     //   style: const TextStyle(
                        //     //     fontSize: 10,
                        //     //     color: Colors.grey,
                        //     //   ),
                        //     // ),
                        //     const Spacer(),
                        //     IconButton(
                        //       onPressed: () {
                        //         // Clipboard.setData(
                        //         //   ClipboardData(
                        //         //     text: widget.text.toString(),
                        //         //   ),
                        //         // ).then(
                        //         //   (_) {
                        //         //     ScaffoldMessenger.of(context).showSnackBar(
                        //         //       const SnackBar(
                        //         //         duration: Duration(milliseconds: 500),
                        //         //         margin: EdgeInsets.all(10),
                        //         //         behavior: SnackBarBehavior.floating,
                        //         //         shape: RoundedRectangleBorder(
                        //         //           borderRadius: BorderRadius.all(
                        //         //               Radius.circular(10.0)),
                        //         //         ),
                        //         //         content: Text(
                        //         //           'Copied to Clipboard',
                        //         //         ),
                        //         //       ),
                        //         //     );
                        //         //   },
                        //         // );
                        //       },
                        //       icon: Image.asset('assets/icons/copy_icon.png'),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
