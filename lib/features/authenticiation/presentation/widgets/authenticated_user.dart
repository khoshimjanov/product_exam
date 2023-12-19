import 'dart:async';
import 'package:tasks/features/authenticiation/domain/entity/authenticated_user.dart';
class AuthenticatedUser {
  AuthenticatedUserEntity? user;
  AuthenticatedUser({

    this.user,
  });

  StreamController<AuthenticatedUserEntity> controller = StreamController();
  Stream<AuthenticatedUserEntity?> stream() async* {
    await Future.delayed(const Duration(seconds: 4));
    yield user;
    yield* controller.stream;
  }
}
