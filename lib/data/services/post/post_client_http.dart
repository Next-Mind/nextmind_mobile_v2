import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/posts/post_summary.dart';
import 'package:result_dart/result_dart.dart';

class PostClientHttp {
  final ClientHttp _clientHttp;

  PostClientHttp(this._clientHttp);

  AsyncResult<List<PostSummary>> fetchPostsSummary() async {
    final response = await _clientHttp.get('/posts?summary=1');
    return response.map((response) {
      final List<dynamic> postsData = response.data['data'];
      return postsData
          .map((postJson) => PostSummary.fromJson(postJson))
          .toList();
    });
  }
}
