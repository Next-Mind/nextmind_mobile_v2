import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/posts/posts_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/posts/post_summary.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class PostCarouselViewmodel extends ChangeNotifier {
  final PostsRepository _postsRepository;

  final List<PostSummary> posts = List.empty(growable: true);

  late final fetchPostsCommand = Command0(_fetchPosts);

  PostCarouselViewmodel(this._postsRepository) {
    fetchPostsCommand.execute();
  }

  AsyncResult<Unit> _fetchPosts() async {
    final repoPosts = await _postsRepository.fetchPostsSummary();
    return repoPosts.map((repoPosts) {
      posts.addAll(repoPosts);
      return unit;
    });
  }
}
