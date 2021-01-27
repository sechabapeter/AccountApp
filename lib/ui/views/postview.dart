import 'package:accountdetails/ui/shared/appcolors.dart';
import 'package:accountdetails/ui/shared/textstyle.dart';
import 'package:accountdetails/ui/shared/ui_helper.dart';
import 'package:accountdetails/ui/widgets/comments.dart';
import 'package:accountdetails/ui/widgets/likebutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:accountdetails/core/models/post.dart';
import 'package:accountdetails/core/models/user.dart';

class PostView extends StatelessWidget {
  final Post post;
  PostView({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UIHelper.verticalSpaceLarge(),
            Text(post.title, style: headerStyle),
            Text(
              'by ${Provider.of<User>(context).name}',
              style: TextStyle(fontSize: 9.0),
            ),
            UIHelper.verticalSpaceMedium(),
            Text(post.body),
            LikeButton(
              postId: post.id,
            ),
            Comments(post.id)
          ],
        ),
      ),
    );
  }
}
