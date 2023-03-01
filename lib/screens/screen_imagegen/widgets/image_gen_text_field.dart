import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/default_text_field_decoration.dart';
import '../../../widgets/app_text.dart';

class ImageGenTextField extends StatelessWidget {
  const ImageGenTextField({
    Key? key,
    required this.imageController,
  }) : super(key: key);
  final TextEditingController imageController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      height: 378,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            color: Colors.grey.withOpacity(0.23),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding * 2),
          const AppText(
            title: 'Explore AI-generated images',
            size: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: defaultPadding),
          const AppText(
              title:
                  'Describe what is on your mind. For best results, be specific..'),
          const SizedBox(height: defaultPadding),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter a value';
              }
              return null;
            },
            controller: imageController,
            decoration: defaultTextFieldDecoration(
                'Example: A car flying in the space'),
            minLines: 5,
            maxLines: 5,
            keyboardType: TextInputType.multiline,
          ),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              const Text(
                'Need some help ?',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              ElevatedButton.icon(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple.shade200),
                ),
                onPressed: () {},
                icon: Image.asset('assets/icons/auto_generate.png'),
                label: const Text('Auto Generate'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
