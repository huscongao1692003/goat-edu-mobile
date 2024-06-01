import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class GgproAuthUser {
  GgproAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<GgproAuthUser> ggproAuthUserSubject =
    BehaviorSubject.seeded(GgproAuthUser(loggedIn: false));
Stream<GgproAuthUser> ggproAuthUserStream() =>
    ggproAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
