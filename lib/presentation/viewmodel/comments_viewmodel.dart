import 'package:flutter_bloc/flutter_bloc.dart';

import 'state/comments_state.dart';

class CommentsViewmodel extends Cubit<CommentsState> {
  CommentsViewmodel() : super(CommentsState());
}
