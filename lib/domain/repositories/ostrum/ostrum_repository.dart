import '../../models/comment/comment_model.dart';

abstract class OstrumRepository {
/// Add your repository logic here
  Future<List<CommentModel>> fetchComments();
}
