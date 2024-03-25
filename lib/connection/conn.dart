
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testing/pages/login_page.dart';



class connection {

final GoogleSignIn _googleSignIn = GoogleSignIn();
final FirebaseAuth _auth = FirebaseAuth.instance;




Future<void> signOut() async {
  await _googleSignIn.signOut();
  await _auth.signOut();
}



Future<void> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleSignInAccount =await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;

    final AuthCredential credential =await GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    final User? user = userCredential.user;

    final String uid = user!.uid;
    final String? email = user.email;
    final String? displayName = user.displayName;
    final String? photoUrl = user.photoURL;

    Fullname =await displayName.toString();
    

  } catch (e) {
    print(e.toString());
  }
}



  Future <User?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e){
      print("some err occur");
    }
    return null;
  }
  
  Future <User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e){
      print("some err occur");
    }
    return null;
  }
  
  



}