import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/models/categoryModel.dart';
import 'package:runway/views/categories_view.dart';
import 'package:runway/widgets/customAppbar.dart';
import 'package:video_player/video_player.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late VideoPlayerController controller;
  List<CategoryModel> category = [
    CategoryModel(image: "assets/images/category/Women.png", name: "Women"),
    CategoryModel(image: "assets/images/category/Men.png", name: "Men"),
    CategoryModel(image: "assets/images/category/Kids.png", name: "Kids"),
    CategoryModel(image: "assets/images/category/Deals.png", name: "Deals"),
    CategoryModel(image: "assets/images/category/Health.png", name: "Health"),
  ];

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset(
        'assets/video/video.mp4',
      ) // code from video_player package to play video from assets
      ..initialize().then((_) {
        setState(() {});
        controller.play(); // Auto play
        controller.setLooping(true); // Optional: Loop the video
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Customappbar(
          prefixIcon: 'assets/svgs/menu.svg',
          suffixIcon: 'assets/svgs/notification.svg',
          text: 'Runway',
        ),
      ),
      body: Stack(   // using Stack to put categories above video
        children: [
          AspectRatio(
            aspectRatio:
                controller
                    .value
                    .aspectRatio, // Maintain aspect ratio of the video
            child: VideoPlayer(controller), // to display the video
          ),

          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(10),
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(30),
                    Expanded(
                      child: ListView.builder(
                        physics:
                            BouncingScrollPhysics(), // to enable bouncing effect on scroll
                        scrollDirection: Axis.horizontal,
                        itemCount: category.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => CategoriesView()));
                              },
                              child: Column(
                                children: [
                                  Image.asset(category[index].image, width: 75),
                                  Gap(10),
                                  Text(
                                    category[index].name,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
