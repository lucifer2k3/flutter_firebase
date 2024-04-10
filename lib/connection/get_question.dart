import 'package:cloud_firestore/cloud_firestore.dart';
 List <String> question =List.empty(growable: true);
class getQuest{
 final questquery = FirebaseFirestore.instance.collection("/Quizzles/mon_hoc/toan/d1/question");
 



  // get data
  void getQuestion() async {
  // get data
  int i=0;
  final docs1 = await questquery.get();


  if (docs1.docs.isNotEmpty) { // Check if there are documents
    for (final doc in docs1.docs) {
      final data = doc.data();
      question.add(data['quest']); // Add element using add()
      print(question[i]);
      i++; // Print the last added element
    }
  } else {
    // Handle the case where there are no questions
    print("No questions found in the collection.");
  }

  
  }

  void getDataFromFirestore(String collectionName, String documentId, Function(Map<String, dynamic> data) onData) async {
  try {
    // Get Firestore instance
    final firestore = FirebaseFirestore.instance;

    // Reference the document
    final document = firestore.collection(collectionName).doc(documentId);

    // Get document snapshot
    final snapshot = await document.get();

    // Check if document exists
    if (snapshot.exists) {
      // Get data map
      final data = snapshot.data()!;
      onData(data); // Call callback function with data
    } else {
      print("Document does not exist");
    }
  } catch (error) {
    print("Error getting data: $error");
  }
}



}