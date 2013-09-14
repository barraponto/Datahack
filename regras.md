# Datahack

Quantidade de jogadores: de 3 a 6 participantes  
Duração de jogo: 2h

## Prefácio

Com a disseminação de tecnologias de informação e comunicação baseadas
 na internet, nossa sociedade tem vivido diversas transformações na forma
 como nos relacionamos e colaboramos em atividades e projetos comuns. A
 lógica horizontal, aberta e colaborativa do Software Livre demonstrou nos
 últimos anos sua capacidade de agregar conhecimento e inteligência na
 construção de artefatos extremamente complexos como os sistemas
 operacionais nos quais a internet é baseada. Avançando para outros
 campos como a cultura, educação e política, a lógica do Software Livre tem
 influenciado decisivamente na superação de velhos paradigmas e
 preconceitos, promovendo práticas livres e abertas em diversos setores da
 sociedade.

É nesse espírito que surge a proposta do DATAHACKER. Um jogo que possa, a partir de um universo lúdico, promover o entendimento e reflexão
 sobre a lógica de funcionamento das comunidades de criação de código na
 internet, simulando a lógica das licenças abertas, linguagens e liberdade do
 conhecimento, tornando a solução de desafios comuns como objetivo
 principal do jogo. A partir dessa experiência, podemos ampliar essa reflexão
 para os processos políticos e para a Participação Social que, a partir da
 internet, vem sendo desafiada a incorporar as linguagens e práticas dos
 ambientes distribuídos da rede.

Como não podia deixar de ser, o jogo foi criado e balanceado fazendo uso
 das tecnologias e metodologias de colaboração das comunidades de código
 livre, tendo sido desenvolvido num ambiente baseado em GIT, onde todas
 as etapas de criação do jogo estão a disposição da sociedade Brasileira. O
 repositório público do jogo poderá ser acessado e replicado por qualquer
 cidadão, tanto no intuito de estudar o processo de criação quanto para
 modificar ou remixar o jogo para outros contextos. 

Datahacker: Jogue, aprenda, aproprie-se e remixe!

## Objetivos

Datahack é um jogo colaborativo onde os participantes devem compor suas
 equipes para produzir software e informação pública e liberar códigos
 relevantes para a sociedade. A informação é representada por Bytes,
 formados por bits produzidos por Desenvolvedores e definidos por
 Designers.

O trabalho no jogo é desenvolvido com base nos princípios de colaboração
 das comunidades de código. As opções para o objetivo geral do jogo se
 baseiam em projetos de governo baseados em Software Livre que utilizam
 metodologia colaborativa em seu desenvolvimento. Todo código produzido
 pelas equipes é público e pode ser usado tanto no objetivo geral do jogo
 quanto nos projetos específicos das equipes.

## Jogo

Comece o jogo escolhendo o desafio geral: Projeto Dados.gov.br,
 Participatório da Juventude ou Portal da Participação Social. Eles definem
 o objetivo geral do jogo:

Dados.gov.br:
```
10000101 — 01110010 — 01100110 
00011100 — 11010010 — 10111101
```

Obs. Participatório: 
```
10000101 — 01110010 — 01100110
00011100 — 11010010 — 10111101
01101100 — 11011101
```

Portal Participação: 
```
10000101 — 01110010 — 01100110
00011100 — 11010010 — 10111101
01101100 — 11011101 — 00111001
10001110
```

Toda equipe que compuser um desses Bytes ganha 2 pontos. Mas se eles
 não forem todos produzidos até a vigésima rodada, todas as equipes
 perdem!

Em seguida cada jogador escolhe seu Desenvolvedor Inicial, recebe
 recursos ($2 e 3 bits), uma carta Desenvolvedor e uma carta Software. E
 então começa a primeira rodada.

## Eventos

Ao começo de cada rodada, pegue o Evento no topo da pilha de Eventos e
 leia em voz alta. O Evento afeta todas as Equipes, podendo ser um Bug
 (efeitos negativos) ou um Encontro (desafios coletivos que recompensam
 em pontos).

Bugs não acontecem na primeira rodada: puxe outra carta do topo da pilha
 até aparecer um Encontro. Encontros são parte importante da cultura do
 software livre, promovendo momentos de aprendizado e produção de
 códigos. Também são momentos de intercâmbio entre as comunidades de
 código, envolvendo desenvolvedores, acadêmicos, servidores públicos e
 demais entusiastas ligados ao software livre e cultura hacker.

## Turnos

Cada jogador, na sua vez, passa por uma série de fases, na ordem:
 Captação, Infraestrutura, Implementação, Infraestrutura 2, Publicação, Manutenção e Expansão.

### Captação

O jogador compra duas cartas do monte. Opcionalmente, pode investir $2
 para comprar outra carta, quantas vezes quiser.

O jogador pode investir $2 para recuperar uma carta do monte de descarte,
 apenas uma vez por rodada.

### Infraestrutura

O jogador pode descer quantas cartas quiser, desde que possa pagar seu
 custo de invocação. Cartas de Hardware tem custo de invocação em
 dinheiro, enquanto cartas de Software tem custo de invocação em bits.
 Equipe e Ações não tem custo de invocação algum.

Nesta fase, o jogador pode colocar na sua equipe uma cópia idêntica de
 qualquer Software na mesa, desde que pague o seu custo de invocação em
 bits.

Cartas de ação podem ser jogadas nesta fase, mas elas saem do jogo
 depois de usadas, não indo para o monte de descarte.

### Implementação

Os Desenvolvedores produzem, cada um, bits ou dinheiro. À exceção do Desenvolvedor Inicial, todos os outros Desenvolvedores só podem produzir
 bits se tiverem um Software para operar, indiferente da Linguagem. Mas se a
 Linguagem do Desenvolvedor e do Software forem a mesma, dispara-se o
 Efeito Máximo do Software, como descrito na carta.

#### Sinergia

Durante a fase de Infraestrutura, ao inserir um Desenvolvedor à mesa, insira
 um ponto de sinergia na linguagem correspondente a este desenvolvedor.
 Conforme o número de pontos de sinergia, a linguagem específica é afetada
 conforme as indicações abaixo:

* 2+ pontos: Todos os desenvolvedores desta linguagem produzem um bit a
 mais na fase de Implementação.
* 4+ pontos: Qualquer desenvolvedor opera software desta linguagem com
 efeito máximo
* 6 pontos:
  * PHP: Softwares de outras linguagens custam 2 bits a mais para serem
 inseridos no jogo.
  * Javascript: Desenvolvedores Javascript operam qualquer software com
 efeito máximo.
  * Ruby: Softwares Ruby tem custo zero para inserção ou cópia.
  * Python: Toda vez que um byte for produzido no jogo, todos os
 desenvolvedores Python produzem 1 bit.

### Infraestrutura 2

O jogador pode descer mais cartas, como na primeira fase de Infraestrutura.

### Publicação

A equipe produz Bytes a partir dos bits acumulados, se somarem 8 bits ou
 mais. Para definir a sequência de bits, joga-se o dado binário, junto com o
 dado dos Designers se houver algum na equipe. Cada Designer pode
 influenciar 1 Byte por rodada.

O dado dos designers sempre retorna um resultado de 1 a 5, sendo permitido
 ao jogador decidir o valor do bit sempre que o resultado for menor do que o
 poder do Designer influenciando esse Byte.

### Manutenção

* O jogador paga $1 por cada membro da Equipe, exceto o Desenvolvedor
 Inicial.
* O jogador tem o direito de preservar 1 Software por Desenvolvedor, sendo
 forçado a descartar o excesso.
* O jogador só pode manter até 4 cartas na mão, sendo forçado a descartar
  as demais.
* O jogador só pode armazenar 7 bits, sendo forçado a descartar o
 excedente.

## Pontuação

Existem 3 formas de pontuar:

* 3 pontos: Executando um Byte do objetivo geral
* 2 pontos: Realizando um dos desafios coletivos
* 1 ponto:  Executando um Byte qualquer

## Lei de Acesso à Informação

O Brasil promulgou recentemente sua Lei de Acesso a Informação, um marco
 para a cidadania por permitir que a cultura da publicidade seja a regra na
 administração pública e que milhões de cidadãos tenham garantido o direito
 de obter dos órgãos governamentais qualquer informação pública que esteja
 sob sua guarda.

Uma lei jovem e que contou com a participação de diversos setores da
 sociedade Brasileira, nossa Lei de Acesso a Informação é também uma das
 mais modernas do mundo, abrigando a previsão da publicação de dados
 abertos e legíveis por máquinas. Dessa forma, a nossa LAI - como é
 chamada pelos íntimos - garante importante recursos para os hackers
 cívicos da sociedade Brasileira, potencializando a construção de códigos de
 forma colaborativa entre a população e os governos.

No jogo, a Lei de Acesso à Informação é um evento que ocorre naturalmente
 na 15a rodada (8a no jogo curto). A partir do momento em que a LAI entra
 em jogo, todos os desenvolvedores passam a produzir 50% a mais em bits,
 arredondado para cima.

Algumas cartas afetam a chegada da LAI, adiantando ou adiando o turno em
 que ela entra em jogo. Para deixar isso visível, usa-se um marcador da LAI
 sobre o tabuleiro de rodadas.
