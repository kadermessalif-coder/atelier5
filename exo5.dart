import 'dart:io';


class NombreNegatifException implements Exception {
  String errorMessage() => "Erreur : Le nombre ne peut pas être négatif.";
}

void main() {
  try {
    
    stdout.write("Veuillez saisir un nombre : ");
    String? saisie = stdin.readLineSync();
    int nombre = int.parse(saisie!);

    
    if (nombre < 0) {
      throw NombreNegatifException();
    }

    
    int carre = nombre * nombre;
    print("Le carré de $nombre est : $carre");

  } on NombreNegatifException catch (e) {
    print(e.errorMessage());
  } on FormatException {
    print("Erreur : Veuillez entrer un nombre entier valide.");
  } catch (e) {
    print("Une erreur inattendue s'est produite : $e");
  } finally {
    
    print("Fin d'opération pour ce nombre.");
  }
}