void main(List<String> arguments) {
  List<int> sequencia = [];

  int n = 10;

  if (arguments.isNotEmpty) {
    if (int.tryParse(arguments[0])! > 0) {
      n = int.parse(arguments[0]);
    }
  } else {
    print('Nenhum argumento passado na linha de comando...');
  }

  print('Imprimindo os $n primeiros números da sequencia de Fibonacci...');

  for (int i = 0; i < n; i++) {
    sequencia.add(fibonacci(i));
  }

  print(sequencia);
}

int fibonacci(int n) {
  if (n > 1) {
    return fibonacci(n - 2) + fibonacci(n - 1);
  } else {
    return n;
  }
}
