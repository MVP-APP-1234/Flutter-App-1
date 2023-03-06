import 'package:country_phone_code_picker/country_phone_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen_sidemenu/widgets/side_menu_app_bar.dart';
import 'package:intl/intl.dart';

import '../../../constants/constants.dart';
import '../../../constants/default_text_field_decoration.dart';
import '../../../widgets/gradiant_button_with_text.dart';
import '../widgets/country_phone_code_picker.dart';
import '../widgets/custom_date_field_picker.dart';
import '../widgets/large_circular_avater_with_edit.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController dateInput = TextEditingController();
  CountryController countryController = initializeCountryController();

  @override
  void dispose() {
    super.dispose();
    countryController.dispose();
    dateInput.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: sideMenuAppBar(context, 'Edit Profile'),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LargeCircularAvatarWithEdit(
                  image: 'assets/images/avatar_image_lg.png',
                  onPressed: () {},
                ),
                const Text(
                  'Name :',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: defaultPadding - 10),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    decoration: defaultTextFieldDecoration('Username'),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                const Text(
                  'E-mail Address :',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: defaultPadding - 10),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: defaultTextFieldDecoration('You@example.com'),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                const Text(
                  'Phone Number :',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: defaultPadding - 10),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: size.width < 300
                          ? size.width * 0.28
                          : size.width * 0.3,
                      child: countryPhoneCodePicker(context, countryController),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 60,
                      width: size.width < 300
                          ? size.width * 0.55
                          : size.width * 0.58,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: defaultTextFieldDecoration(
                            'Enter your phone number'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                const Text(
                  'Occupation :',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: defaultPadding - 10),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    decoration:
                        defaultTextFieldDecoration('Enter your occupation'),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                const Text('Date of Birth :'),
                const SizedBox(height: defaultPadding - 10),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    decoration: customDateFieldPicker(),
                    controller: dateInput,
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2100));
                      if (pickedDate != null) {
                        String formattedDate =
                            DateFormat('dd/MM/yyyy').format(pickedDate);
                        setState(() {
                          dateInput.text = formattedDate;
                        });
                      } else {}
                    },
                  ),
                ),
                const SizedBox(height: defaultPadding * 2),
                GradiantButtonWithText(
                  title: 'Save Changes',
                  onPressed: () {
                    FocusManager.instance.primaryFocus!.unfocus();
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(height: defaultPadding * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
