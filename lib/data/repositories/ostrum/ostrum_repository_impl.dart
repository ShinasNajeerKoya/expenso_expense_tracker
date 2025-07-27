import 'package:expenso_expense_tracker/domain/repositories/ostrum/ostrum_repository.dart';

import '../../../domain/models/comment/comment_model.dart';
import '../../services/comment_service/comment_service.dart';

class OstrumRepositoryImpl implements OstrumRepository {
  final OstrumService _service;

  OstrumRepositoryImpl(this._service);

  @override
  Future<List<CommentModel>> fetchComments() async {
    final rawList = await _service.fetchCommentsRaw();
    return rawList.map(CommentModel.fromJson).toList();
  }
}
