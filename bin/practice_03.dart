void main() {
  double coffeeArea = 120.0;
  double plantainArea = 80.0;
  double avocadoArea = 50.0;

  double totalArea = coffeeArea + plantainArea + avocadoArea;
  double averageArea = totalArea / 3;
  double coffeeShare = coffeeArea / totalArea * 100;

  print('Total: ${totalArea.toStringAsFixed(2)} ha');
  print('Average: ${averageArea.toStringAsFixed(2)} ha');
  print('Coffee share: ${coffeeShare.toStringAsFixed(2)}%');
}
