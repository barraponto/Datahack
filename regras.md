# Datahack

Quantidade de jogadores: de 3 a 6 participantes
Duração de jogo: 2h (1h na versão curta)

## Objetivos

Datahack é um jogo colaborativo onde os participantes devem compor suas equipes
para produzir informação pública e liberar informação relevante para a
sociedade. A informação é representada por Bytes, formados por bits produzidos
por Desenvolvedores e definidos por Designers.

## Jogo

Comece o jogo sorteando 8 bytes (4 na versão curta): seqüências de 8 dígitos 0
ou 1. Use moedas ou dados (resultado par = 0, resultado impar = 1) para esse
sorteio e anote os Bytes sorteados: eles são o Objetivo Comum do jogo. Toda
equipe que compuser um desses Bytes ganha 2 pontos. Mas se eles não forem todos
produzidos até a vigésima rodada (décima, na versão curta), todas as equipes
perdem!

Em seguida cada jogador escolhe seu Desenvolvedor Inicial, recebe recursos ($2 e
3 bits), uma carta Desenvolvedor e uma carta Software. E então começa a primeira
rodada.

## Eventos

Ao começo de cada rodada, pegue o Evento no topo da pilha de Eventos e leia em
voz alta. O Evento afeta todas as Equipes, podendo ser um Bug (efeitos
negativos) ou um Encontro (desafios coletivos que recompensam em pontos).

Bugs não acontecem na primeira rodada: puxe outra carta do topo da pilha até
aparecer um Encontro.

## Turnos

Cada jogador, na sua vez, passa por uma série de fases, na ordem: Captação,
Infraestrutura, Implementação, Infraestrutura 2, Publicação, Manutenção e
Expansão.

### Captação

O jogador compra duas cartas do monte. Opcionalmente, pode investir $2 para
comprar outra carta, quantas vezes quiser.

### Infraestrutura

O jogador pode descer quantas cartas quiser, desde que possa pagar seu custo
de invocação. Cartas de Hardware tem custo de invocação em dinheiro, enquanto
cartas de Software tem custo de invocação em bits. Equipe e Ações não tem custo
de invocação algum.

Nesta fase, o jogador pode colocar na sua equipe uma cópia idêntica de qualquer
Software na mesa, desde que pague o seu custo de invocação em bits.

### Implementação

Os Desenvolvedores produzem, cada um, bits ou dinheiro. À exceção do
Desenvolvedor Inicial, todos os outros Desenvolvedores só podem produzir bits se
tiverem um Software para operar, indiferente da Linguagem. Mas se a Linguagem do
Desenvolvedor e do Software forem a mesma, dispara-se o Efeito Máximo do
Software, como descrito na carta.

### Infraestrutura 2

O jogador pode descer mais cartas, como na primeira fase de Infraestrutura.

### Publicação

A equipe produz Bytes a partir dos bits acumulados, se somarem 8 bits ou
mais. Para definir a sequência de bits, joga-se o dado binário, junto com o
dado dos Designers se houver algum na equipe. Cada Designer pode influenciar 1
Byte por rodada.

O dado dos designers sempre retorna um resultado de 1 a 5, sendo permitido ao
jogador decidir o valor do bit sempre que o resultado for menor do que o poder
do Designer influenciando esse Byte.

### Manutenção

* O jogador paga $1 por cada membro da Equipe, exceto o Desenvolvedor
  Inicial.
* O jogador tem o direito de preservar 1 Software por Desenvolvedor, sendo
  forçado a descartar o excesso.
* O jogador só pode manter até 4 cartas na mão, sendo forçado a descartar
  as demais.
* O jogador só pode armazenar 7 bits, sendo forçado a descartar o excedente.

### Expansão

O jogador pode começar um novo Projeto, se já não estiver envolvido em um. Ao
comprar um Projeto, o jogador ganha um objetivo privado que ao ser completado
recompensa a equipe em dinheiro. No entanto, se ao final do jogo o Projeto não
tiver sido executado, o jogador é forçado a pagar o seu prêmio em dinheiro ou
pontos.

## Pontuação

Existem 3 formas de pontuar:

* 3 pontos: Executando um Byte do objetivo geral
* 2 pontos: Realizando um dos desafios coletivos
* 1 ponto:  Executando um Byte qualquer

Contam para a pontuação os projetos incompletos, quando o jogador não pode
pagar seu prêmio em dinheiro, pagando o excedente em pontos.

## Lei de Acesso à Informação

A Lei de Acesso à Informação é um evento que ocorre naturalmente na 15a rodada
do jogo (8a no jogo curto). A partir do momento em que a LAI entra em jogo,
todos os desenvolvedores passam a produzir 50% a mais em bits, arredondado para
cima.

Algumas cartas afetam a chegada da LAI, adiantando ou adiando o turno em que ela
entra em jogo. Para deixar isso visível, usa-se um marcador da LAI sobre o
tabuleiro de rodadas.
