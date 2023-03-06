import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/constants/constants.dart';

import '../../../../constants/app_bar_with_back_and_title.dart';

class FaceBookResult extends StatelessWidget {
  const FaceBookResult({super.key});

  @override
  Widget build(BuildContext context) {
    List content = [
      'My heart goes out to all those affected by the devastating earthquake in Syria. Praying for safety and strangth during this difficult time.',
      'Prayers for Syria as another earthquake rocks the region. So heartbreaking and frightening for those affected. #PrayForSyria',
      'My heart breaks for Syria as the country is rocked by a magnitude 5.4 earthquake. Please send your thoughts and prayers to those affected by this devastating event.',
    ];
    return Scaffold(
      appBar: appBarWithBackArrowAndTitle(
        context: context,
        text: 'Facebook Status',
        icon: 'assets/icons/app_bar_icon_1.png',
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: content.length,
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
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          content[index],
                          style: const TextStyle(fontSize: 13),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              content[index]
                                  .toString()
                                  .split(' ')
                                  .length
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Clipboard.setData(
                                  ClipboardData(
                                    text: content[index],
                                  ),
                                ).then(
                                  (_) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        duration: Duration(milliseconds: 500),
                                        margin: EdgeInsets.all(10),
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        content: Text(
                                          'Copied to Clipboard',
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: Image.asset('assets/icons/copy_icon.png'),
                            )
                          ],
                        )
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
