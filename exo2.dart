import 'dart:io';

void main() {
  try {

    stdout.write("Veuillez saisir votre âge : ");
    String? saisie = stdin.readLineSync();

    
    int age = int.parse(saisie!);
    print("Votre âge est : $age ans");
  } on FormatException {
    
    print("Erreur : Le format saisi n'est pas un nombre valide.");
  } catch (e) {
    print("Une autre erreur est survenue : $e");
  } finally {
    
    print("Fin d'opération");
  }
}