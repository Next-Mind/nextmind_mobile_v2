import 'package:nextmind_mobile_v2/data/repositories/posts/posts_repository.dart';
import 'package:nextmind_mobile_v2/data/services/post/post_client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/posts/post_summary.dart';
import 'package:result_dart/result_dart.dart';

class RemotePostsRepository implements PostsRepository {
  final PostClientHttp _postClientHttp;

  RemotePostsRepository(this._postClientHttp);

  @override
  AsyncResult<List<PostSummary>> fetchPostsSummary() {
    return _postClientHttp.fetchPostsSummary();
  }
}
