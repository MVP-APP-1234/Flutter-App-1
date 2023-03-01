import 'package:country_phone_code_picker/country_phone_code_picker.dart';
import 'package:flutter/material.dart';

CountryPhoneCodePicker countryPhoneCodePicker() {
  CountryController countryController = initializeCountryController();
  return CountryPhoneCodePicker.withDefaultSelectedCountry(
    defaultCountryCode:
        Country(name: 'UAE', countryCode: 'AE', phoneCode: ' +971'),
    height: 60,
    width: 120,
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.red,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.red,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.blue,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.grey.withOpacity(0.5),
      ),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.grey.withOpacity(0.5),
      ),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    borderColor: Colors.grey.withOpacity(0.5),
    showPhoneCode: true,
    borderRadius: 10,
    borderWidth: 1,
    flagBorderRadius: 5,
    flagHeight: 20,
    flagWidth: 30,
    style: const TextStyle(fontSize: 16),
    searchBarHintText: 'Search by name',
    countryController: countryController,
  );
}
