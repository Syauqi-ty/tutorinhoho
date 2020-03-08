import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tutorinhoho/course_notifier.dart';
import 'package:firebase_database/firebase_database.dart';
import 'course_view.dart';
import 'course_notifier.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String name;
String email;
String imageUrl;
String token;

Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  // Checking if email and name is null
  assert(user.email != null);
  assert(user.displayName != null);
  assert(user.photoUrl != null);

  name = user.displayName;
  token = user.uid;
  email = user.email;
  imageUrl = user.photoUrl;

  // Only taking the first part of the name, i.e., First Name

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);

  return 'signInWithGoogle succeeded: $user';
}

void signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Sign Out");
}

getCourse(Pass pass) async {
   List<Kategori> _kategoriList = [];
   List<Kategori2> _kategori2List = [];


    DatabaseReference kategoriRef =
        FirebaseDatabase.instance.reference().child("Kategoriipa");
    DatabaseReference kategori2Ref =
        FirebaseDatabase.instance.reference().child("Kategoriips");

    kategoriRef.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;
      var DATA = snap.value;

      _kategoriList.clear();

      for (var name in KEYS) {
        Kategori kategori =
            new Kategori(DATA[name]['judul'], DATA[name]['image']);

        _kategoriList.add(kategori);
      }
    });
    kategori2Ref.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;
      var DATA = snap.value;

      _kategori2List.clear();

      for (var name in KEYS) {
        Kategori2 kategori2 =
            new Kategori2(DATA[name]['judul'], DATA[name]['image']);

        _kategori2List.add(kategori2);
      }     
    });
    pass.kategoriList=_kategoriList;
    pass.kategori2List = _kategori2List;
  }