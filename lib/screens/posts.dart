import 'package:facebook/screens/color_app.dart';
import 'package:flutter/material.dart';
import 'action_custom.dart';

class Posts extends StatelessWidget {
  String image;
  String name;
  String time;
  String profileImage;


  Posts({super.key, required this.image, required this.name, required this.time, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all( width: 1),
                ),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(profileImage),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                          color: ColorApp.gray,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.public, color: ColorApp.gray, size: 16),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 270,
          width: double.infinity,
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/heart.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/Chat_Dots.png', width: 25),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/send.png'),
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/Bookmark.png'),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(height: 1, color: ColorApp.gray),
      ],
    );
  }
}
