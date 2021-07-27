import 'package:brew_crew/models/users.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Users? _userFromFirebaseUser(User user) {
    return Users(uid: user.uid);
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return 'no user';
    }
  }
  //sign in anon

  //sign in with email and passwd

  //reigster with email and passwd

  //sign out
}
