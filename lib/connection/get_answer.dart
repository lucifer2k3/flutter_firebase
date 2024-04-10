import 'package:cloud_firestore/cloud_firestore.dart';
 List <String> answerA=List.empty(growable: true);
 List <String> answerB=List.empty(growable: true);
 List <String> answerC=List.empty(growable: true);
 List <String> answerD=List.empty(growable: true);
 List <String> trueAnswer=List.empty(growable: true);
class getAns{
  
 final ansquery = FirebaseFirestore.instance.collection("/Quizzles/mon_hoc/toan/d1/ans");


 
  
  int j=0;
  // get data
  void getAnswer() async {
  // get data
  final docs1 = await ansquery.get();


  if (docs1.docs.isNotEmpty) { // Check if there are documents
    for (final doc in docs1.docs) {
      final data = doc.data();
      answerA.add(data['a']); // Add element using add()
      answerB.add(data['b']);
      answerC.add(data['c']);
      answerD.add(data['d']);
      trueAnswer.add(data['true']);

      print(trueAnswer[j]);
      j++; // Print the last added element
    }
  } else {
    // Handle the case where there are no questions
    print("No questions found in the collection.");
  }

  
  }

}