import 'package:facebook/screens/color_app.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  String image;
  String profileImage;

  StoryItem({super.key, required this.image, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        width: 110,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorApp.blue, width: 2),
                ),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(profileImage),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
