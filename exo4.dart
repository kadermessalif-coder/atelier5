
class MotdepasseCourtException implements Exception {
  String errorMessage() => "Exception : Le mot de passe doit contenir au moins 6 caractères.";
}


void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
  print("Mot de passe valide !");
}

void main() {
  
  try {
    verifierMotdepasse("abc"); 
  } on MotdepasseCourtException catch (e) {
    print(e.errorMessage());
  } catch (e) {
    print("Autre erreur : $e");
  }
}