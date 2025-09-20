import 'package:nextmind_mobile_v2/domain/models/posts/post_summary.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class PostsRepository {
  AsyncResult<List<PostSummary>> fetchPostsSummary();
}
