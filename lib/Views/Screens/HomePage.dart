import 'package:flutter/material.dart';
import 'package:gallery_app_api/Helper/Gallery_Helper.dart';
import 'package:gallery_app_api/Model/Gallery_Model.dart';
import 'package:gallery_app_api/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController ima = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery app"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: GalleryHelper.galleryHelper.gallerydata(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            Gallery? data = snapshot.data as Gallery?;
            if (data != null) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextFormField(
                        controller: ima,
                        onChanged: (val) {
                          setState(() {
                            Global.images = val;
                          });
                        },
                        decoration: InputDecoration(
                          label: Text("Search"),
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i1)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i2)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i3)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i4)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i5)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i6)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i7)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i8)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i9)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i10)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i11)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i2)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i13)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i14)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(data.i15)),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              );
            }
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

// Iamge({required String image}) {
//   return Container(
//     height: 150,
//     width: double.infinity,
//     child: Image.network(image, fit: BoxFit.fill),
//   );
// }
}
