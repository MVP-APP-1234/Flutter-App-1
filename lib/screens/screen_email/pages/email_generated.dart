import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/constants/constants.dart';

import '../../../../constants/app_bar_with_back_and_title.dart';

class EmailGenerated extends StatefulWidget {
  const EmailGenerated({super.key, required this.text});
  final String text;

  @override
  State<EmailGenerated> createState() => _EmailGeneratedState();
}

class _EmailGeneratedState extends State<EmailGenerated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithBackArrowAndTitle(
        context: context,
        text: 'E-mail Generated',
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 1,
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
                          widget.text,
                          style: const TextStyle(fontSize: 13),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              widget.text
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
                                    text: widget.text.toString(),
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
