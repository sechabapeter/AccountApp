import 'package:accountdetails/core/nums/viewsate.dart';
import 'package:accountdetails/core/services/posts_service.dart';
import 'package:accountdetails/locator.dart';

import 'package:accountdetails/core/models/post.dart';

import 'base_model.dart';

class HomeModel extends BaseModel {
  PostsService _postsService = locator<PostsService>();

  List<Post> get posts => _postsService.posts;

  Future getPosts(int userId) async {
    setState(ViewState.Busy);
    await _postsService.getPostsForUser(userId);
    setState(ViewState.Idle);
  }
}
