import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EasySlimmingFirebaseUser {
  EasySlimmingFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

EasySlimmingFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EasySlimmingFirebaseUser> easySlimmingFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EasySlimmingFirebaseUser>(
            (user) => currentUser = EasySlimmingFirebaseUser(user));
