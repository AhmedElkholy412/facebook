import 'package:facebook/screens/color_app.dart';
import 'package:facebook/screens/posts.dart';
import 'package:facebook/screens/story_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'action_custom.dart';
import 'create_story.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: ColorApp.white,
        appBar: AppBar(
          title: Image.asset('assets/images/facebook_logo.png', width: 156),
          actions: [
            IconButton(
              onPressed: () {},
              icon: ActionCustom(
                image: 'assets/images/Plus.png',
                height: 26,
                width: 26,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: ActionCustom(
                image: 'assets/images/Search.png',
                height: 22,
                width: 22,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: ActionCustom(
                image: 'assets/images/Messenger.png',
                height: 22,
                width: 22,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: ColorApp.blue,
            indicatorWeight: 2,
            labelColor: ColorApp.blue,
            unselectedLabelColor: ColorApp.gray,
            tabs: [
              Tab(icon: tabIcon(0, 'assets/images/Vector.svg')),
              Tab(icon: tabIcon(1, 'assets/images/group.svg')),
              Tab(icon: tabIcon(2, 'assets/images/Store.svg')),
              Tab(icon: tabIcon(3, 'assets/images/Profile.svg')),
              Tab(icon: tabIcon(4, 'assets/images/Notification.svg')),
              Tab(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all( width: 1),
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/cat1.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon:  Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/cat1.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'What\'s on your mind?',
                            hintStyle: TextStyle(
                              color: ColorApp.gray,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/Photos.svg'),
                      ),
                    ],
                  ),
                ),
                Container(height: 1, color: ColorApp.gray),
                SizedBox(height: 10),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length+1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return CreateStory();
                      }
                      return StoryItem(image: images[index-1],
                        profileImage: profileImages[index-1],);
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(height: 1, color: ColorApp.gray),
                SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Posts(image: posts[index],
                      name: names[index],
                      time: times[index],
                      profileImage: profileImages[index],);
                  },
                ),
              ],
            ),
            Center(child: Text('Group')),
            Center(child: Text('Store')),
            Center(child: Text('Profile')),
            Center(child: Text('Notification')),
            Center(child: Text('Profile')),
          ],
        ),
      ),
    );
  }

  Widget tabIcon(int index, String image) {
    return Builder(
      builder: (context) {
        final tabBar = DefaultTabController.of(context);
        return AnimatedBuilder(
          animation: tabBar.animation!,
          builder: (context, child) {
            final selected = tabBar.animation!.value.round() == index;
            return SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                selected ? ColorApp.blue : ColorApp.gray,
                BlendMode.srcIn,
              ),
            );
          },
        );
      },
    );
  }

  List<String> images = [
    'assets/images/cat.jpg',
    'assets/images/leomessi.jpg',
    'assets/images/leomessi1.jpg',
    'assets/images/star.jpg',
    'assets/images/star1.jpg',
    'assets/images/Ronaldo.jpg',
  ];
  List<String> posts = [
    'assets/images/frame.jpg',
    'assets/images/leomessi.jpg',
    'assets/images/Ronaldo.jpg',
    'assets/images/leomessi1.jpg',
    'assets/images/frame2.jpg',
    'assets/images/cat.jpg',
  ];
  List<String> names = [
    'Ahmed Elkholy',
    'Leo Messi',
    'Ronaldo',
    'Leo Messi',
    'Ahmed Elkholy',
    'Cat',
  ];
  List<String> times = [
    '1h',
    '2h',
    '3h',
    '4h',
    '5h',
    '6h',
  ];
  List<String> profileImages = [
    'assets/images/cat1.jpg',
    'assets/images/star1.jpg',
    'assets/images/star.jpg',
    'assets/images/star1.jpg',
    'assets/images/cat1.jpg',
    'assets/images/cat.jpg',
  ];
}
