import 'package:flutter/material.dart';

class LargeCircularAvatarWithEdit extends StatelessWidget {
  const LargeCircularAvatarWithEdit({
    Key? key,
    required this.onPressed,
    required this.image,
  }) : super(key: key);
  final String image;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      width: size.width,
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 155,
              width: 155,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.indigoAccent.shade700,
                    Colors.pinkAccent.withOpacity(0.5),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 50,
                child: Image.asset(image),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 20,
              child: GestureDetector(
                onTap: onPressed,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: Image.asset('assets/icons/edit_icon.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
