import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_app/const/global_colors.dart';
import 'package:store_app/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListTile(
      leading: FancyShimmerImage(
        height: size.width * 0.15,
        width: size.width * 0.15,
        errorWidget: const Icon(
          IconlyBold.danger,
          color: Colors.red,
          size: 28,
        ),
        imageUrl: user.avatar ?? "https://placeimg.com/640/480/any",
        boxFit: BoxFit.fill,
      ),
      title: Text(user.name ?? 'Name'),
      subtitle: Text(user.email ?? 'Email'),
      trailing: Text(
        user.role ?? 'User Role',
        style: TextStyle(
          color: lightIconsColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
