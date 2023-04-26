import 'dart:convert';
import 'package:gallery_app_api/Model/Gallery_Model.dart';
import 'package:gallery_app_api/global.dart';
import 'package:http/http.dart' as http;


class GalleryHelper {
  GalleryHelper._();

  static final GalleryHelper galleryHelper = GalleryHelper._();

  Future<Gallery?> gallerydata() async {
    String api =
        "https://pixabay.com/api/?key=35722369-0ff268194d7105d16de321576&q=${Global.images}&image_type=photo&pretty=true";

    http.Response response = await http.get(
      Uri.parse(api),
    );
    if (response.statusCode == 200) {
      Map decodeddata = jsonDecode(response.body);
      Gallery gallery = Gallery.fromMap(data: decodeddata);

      return gallery;
    }
    return null;
  }
}
