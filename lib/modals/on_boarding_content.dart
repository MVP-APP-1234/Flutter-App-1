class OnBoardingContent {
  String image;
  String text;
  OnBoardingContent({required this.image, required this.text});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
    image: 'assets/images/onboard_image_1.png',
    text:
        'Kickstart your content now with simple \nsteps and improve your brand\'s voice \nand tone.',
  ),
  OnBoardingContent(
    image: 'assets/images/onboard_image_2.png',
    text:
        'Never face writes block again. Generate \ncreative content that aligns with your \nidea.',
  ),
  OnBoardingContent(
    image: 'assets/images/onboard_image_3.png',
    text:
        'Build your brand\'s voice, get your \nthoughts out to the world and educate \nyour customers without the need for \ndedicated copyright staff.',
  ),
];
