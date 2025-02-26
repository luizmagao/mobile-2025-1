# Atividade sobre Listas/Funções

## Atividades

### 1. Validação de categorias de produtos em um sistema de estoque.

- Você está desenvolvendo um sistema de gerenciamento de estoque onde cada produto deve pertencer a uma categoria específica como `eletronicos`, `alimentos`, `vestuario` e `livros`. Crie uma função que solicite à pessoa usuária que insira a categoria de um novo produto e valide a entrada, garantindo que a categoria existe no sistema.

Veja como ficaria o resultado no terminal:

```bash
Digite a categoria do produto (eletronicos, alimentos, vestuario, livros):
livros
Categoria válida: livros
```

### 2. Validação de tipos de arquivos em um sistema de upload

- Você está desenvolvendo um sistema de upload de arquivos que aceita apenas tipos específicos como `pdf`, `jpg`, `png` e `docx`. Crie uma função que solicite à pessoa usuária o tipo de arquivo a ser enviado e valide se a entrada é um tipo de arquivo permitido, solicitando novamente em caso de erro.

### 3. Dando uma nova chance no retorno de mês

- Lembra-se da atividade em que usamos recursividade. No programa abaixo onde se informa o mês no terminal através do número! Pegue este código e **adicione a recursão**, permitindo que o usuário possa novamente tentar inserir um número, caso digite um valor inválido (diferente dos números de 1 a 12).

Se quiser, copie o código abaixo e adicione a recursão:

```dart
void main() {
  print('Digite um número de 1 a 12 para saber o mês correspondente:');
  String? input = stdin.readLineSync();

  // Null safety e conversão de entrada
  int numero = int.parse(input!);

  // Função que retorna o mês correspondente
  String obterMes(int numero) {
    switch (numero) {
      case 1:
        return 'Janeiro';
      case 2:
        return 'Fevereiro';
      case 3:
        return 'Março';
      case 4:
        return 'Abril';
      case 5:
        return 'Maio';
      case 6:
        return 'Junho';
      case 7:
        return 'Julho';
      case 8:
        return 'Agosto';
      case 9:
        return 'Setembro';
      case 10:
        return 'Outubro';
      case 11:
        return 'Novembro';
      case 12:
        return 'Dezembro';
      default:
        return 'Número inválido. Por favor, insira um número de 1 a 12.';
    }
  }

  String mes = obterMes(numero);
  print(mes);
}
```

### 4. Criando a função de depósito e fazendo sua validação

Vamos continuar desenvolvendo o programa de banco.

- Agora, concentre-se na operação de depósito e escreva uma função em que o usuário, após digitar um valor numérico, o insere na conta. Lembre-se de validar se a entrada é um número positivo. Caso contrário, solicite novamente até que um valor válido seja fornecido. A ideia é que o programa rode mais ou menos assim no terminal:

```bash
Digite uma operação (deposito, retirada, transferencia, pagamento):
operação inválida que não existe na lista!
Operação inválida. Tente novamente.
Digite uma operação (deposito, retirada, transferencia, pagamento):
aaaabbbbb
Operação inválida. Tente novamente.
Digite uma operação (deposito, retirada, transferencia, pagamento):
pagamento
Digite o valor da operação:
500
Operação escolhida: pagamento, Valor: 500.0
```

### 5. Validação de métodos de pagamento em uma plataforma de e-commerce

- Você está desenvolvendo uma plataforma de e-commerce onde a pessoa usuária pode escolher entre diferentes métodos de pagamento como `cartao`, `boleto`, `paypal` e `pix`. Crie uma função que solicite à pessoa usuária o método de pagamento desejado e valide se a entrada é válida, solicitando novamente em caso de erro.

### Vamos lá
