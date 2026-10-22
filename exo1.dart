void main() {
  try {
    // 1. Tente de diviser 12 par 0
    int resultat = 12 ~/ 0;
    print("Résultat : $resultat");
  } catch (e) {
    // 3. Affiche "Division impossible" si une exception est rattrapée
    print("Division impossible");
  }
}