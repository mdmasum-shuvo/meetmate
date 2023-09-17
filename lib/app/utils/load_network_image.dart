import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../theme/image_assets.dart';

Widget loadNetworkImage(String img) {
  return CachedNetworkImage(
    fit: BoxFit.cover,
    imageUrl: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    placeholder: (context, url) => const Padding(
      padding: EdgeInsets.all(5),
      child: SpinKitCircle(
        color: Colors.black,
        size: 30.0,
      ),
    ),
    imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
    ),
    errorWidget: (context, url, error) => Padding(
      padding: EdgeInsets.all(4.r),
      child: CircleAvatar(
        radius: 98.r,
        // Image radius
        backgroundImage: Image.asset(profile_logo).image,
      ),
    ),
  );
}
