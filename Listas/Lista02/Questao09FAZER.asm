Para calcular a data anterior e a data seguinte, você pode usar o seguinte algoritmo, levando em conta anos bissextos e o fim de cada mês:

Verifique se o ano é bissexto:

Um ano é bissexto se:
É divisível por 4 e não por 100, ou
É divisível por 400.
Defina o número de dias em cada mês:

Para meses comuns: dias_mes = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
Para anos bissextos, ajuste fevereiro para 29 dias.
Para a data seguinte:

Se o dia é menor que o número máximo de dias do mês, apenas aumente o dia.
Caso contrário, zere o dia para 1 e aumente o mês em 1.
Se o mês passar de dezembro (12), ajuste o mês para 1 e aumente o ano.
Para a data anterior:

Se o dia é maior que 1, apenas diminua o dia.
Caso contrário, ajuste o dia para o número de dias do mês anterior e diminua o mês em 1.
Se o mês passar para antes de janeiro (1), ajuste para dezembro (12) e diminua o ano em 1.