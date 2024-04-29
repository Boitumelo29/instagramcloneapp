import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_manager/photo_manager.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  // final List<Widget> _mediaList = [];
  // final List<File> path = [];
  // File? _file;
  // int currentPage = 0;
  // int? lastPage;
  @override
  // _fetchNewMedia() async {
  //   lastPage = currentPage;
  //   final PermissionStatus ps = await PhotoManager.requestPermissionExtend();
  //   if (ps.isAuth) {
  //     List<AssetPathEntity> album =
  //         await PhotoManager.getAssetPathList(onlyAll: true);
  //     List<AssetEntity> media =
  //         await album[0].getAssetListPaged(page: 60, size: currentPage);

  //     for (var asset in media) {
  //       if (asset.type == AssetType.image) {
  //         final file = await asset.file;
  //         if (file != null) {
  //           path.add(File(file.path));
  //           _file = path[0];
  //         }
  //       }
  //     }
  //     List<Widget> temp = [];
  //     for(var asset in media)temp.add(FutureBuilder(future: asset.thumbnailDataWithSize(ThumbnailSize(200, 200)), builder: I stopped at 16:05))}
  //   }
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("New Post"),
        centerTitle: false,
        actions: [
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: const Text(
              "Next",
              style: TextStyle(color: Colors.blue),
            ),
          ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 375.h,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1),
                    itemBuilder: (context, index) {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
