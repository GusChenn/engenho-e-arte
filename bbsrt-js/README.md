# O que é Javascript?

Javascript é uma linguagem de desenvolvimento de scripts que originalmente tinha o objetivo de criar comportamentos complexos e páginas web, interagindo com a DOM (Document Object Model, estrutura de dado que armazena informações sobre todos os objetos de uma determinada página web) a fim de manipular, introduzir ou remover elementos de uma página. Por esse motivo, é a principal linguagem utilizada atualmente na criação de *front ends* de aplicações web.

Para que o javascript também pudesse ser utilizado na criação de *back ends*, Ryan Dahl criou em 2009 o Node.js, que é um software de código aberto baseado no interpretador v8 que permite a execução de códigos javascript fora de um navegador.

O Node.js oferece uma série de vantagens ao programador que o usa, mas para manter o texto objetivo, focaremos nas partes que afetam o desempenho da linguagem quando executando os códigos criados pelo grupo.

# V8

V8 é o interpretador (*engine*) javascript criado pelo Google e que é utilizado em seu navegador. É um interpretador **desenvolvido em C++** e distribuído como código aberto. Em suma, o interpretador v8 é responsável por realizar a compilação de um código javascript (que normalmente seria apenas interpretado), melhorando assim o desempenho do programa e possibilitando que esse código seja executado pela máquina sem depender de nenhum interpretador.

# Resultados

- 1.000: 0.001s
- 5.000: 0.027s
- 10.000: 0.136s
- 20.000: 0.636s
- 30.000: 1.489s
- 50.000: 4.229s
