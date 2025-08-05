# Estrutura de Aulas do Curso (Índice Detalhado e Expandido)

Este documento delineia a trilha de aprendizagem completa do curso. A estrutura foi projetada para ser uma formação de nível universitário, levando o aluno do zero absoluto ao nível profissional.

# Sumário
- [Módulo 00: Fundamentos Universais da Lógica de Programação](#módulo-00-fundamentos-universais-da-lógica-de-programação)
- [Módulo 01: Godot Engine: Conceitos Essenciais](#módulo-01-godot-engine-conceitos-essenciais)
- [Módulo 02: O Laboratório de Mecânicas: Construindo seu Primeiro Jogo](#módulo-02-o-laboratório-de-mecânicas-construindo-seu-primeiro-jogo)
- [Módulo 03: Design de Jogos e Documentação](#módulo-03-design-de-jogos-e-documentação)
- [Módulo 04: Arquitetura de Software para Jogos](#módulo-04-arquitetura-de-software-para-jogos)
- [Módulo 05: Projeto Principal: Integrando Sistemas Profissionais (ARPG 2D)](#módulo-05-projeto-principal-integrando-sistemas-profissionais-arpg-2d)
- [Módulo 06: Tópicos Avançados de Gameplay](#módulo-06-tópicos-avançados-de-gameplay)
- [Módulo 07: Produção, Publicação e Carreira](#módulo-07-produção-publicação-e-carreira)
- [Módulo 08: Ecossistema e Ferramentas Externas](#módulo-08-ecossistema-e-ferramentas-externas)

---

## **Módulo 00: Fundamentos Universais da Lógica de Programação**
-   **Objetivo:** Estabelecer uma base conceitual robusta e agnóstica de linguagem sobre os pilares da programação. Este módulo serve como o alicerce teórico para qualquer área de desenvolvimento de software, utilizando exemplos em GDScript, Python, JavaScript e C++ para ilustrar a universalidade dos conceitos.

-   **Aulas:**

    -   **Aula 0.1: O que é Programação? Algoritmos e Modelos Lógicos**
        -   **Conceito Central:** Apresentar a programação como a disciplina de criar modelos lógicos formais (algoritmos) para resolver problemas e automatizar processos. O foco é a tradução de um requisito abstrato em uma sequência de instruções precisas, determinísticas e não-ambíguas que um sistema computacional pode executar.
        -   **Tópicos a Cobrir:**
            -   Definição formal de Algoritmo: uma sequência finita de ações executáveis para resolver um problema.
            -   Abstração e Decomposição: como quebrar problemas complexos em subproblemas menores e gerenciáveis.
            -   Linguagens de Programação como ferramentas formais para a expressão de algoritmos.
            -   Diferença entre código-fonte (abstração humana) e código de máquina (execução nativa).
            -   Introdução ao Pseudocódigo como ferramenta de design de algoritmos.
        -   **Objetivo de Aprendizagem:** Ao final da aula, o aluno deve ser capaz de definir o que é um algoritmo e de projetar uma solução para um problema simples em pseudocódigo, demonstrando pensamento lógico e estruturado.
        -   **Exercício Prático Sugerido:** Escrever um pseudocódigo para um algoritmo que determina o maior de três números. O pseudocódigo deve ser claro o suficiente para que possa ser implementado em qualquer linguagem sem ambiguidades.

    -   **Aula 0.2: Variáveis, Constantes e Gerenciamento de Estado**
        -   **Conceito Central:** Introduzir variáveis como referências nomeadas a espaços na memória que armazenam o **estado** da aplicação. Uma variável é uma abstração que permite ao programador manipular dados sem gerenciar endereços de memória físicos. Constantes são referências a dados imutáveis, essenciais para a legibilidade e para garantir a integridade de valores críticos para a lógica do programa (ex: configurações, constantes matemáticas).
        -   **Tópicos a Cobrir:**
            -   Declaração, inicialização e atribuição.
            -   Escopo de variáveis (introdução ao conceito de onde uma variável é acessível).
            -   Convenções de nomenclatura (`snake_case`, `camelCase`, `PascalCase`).
            -   O papel das constantes na prevenção de "números mágicos" e na refatoração de código.
        -   **Objetivo de Aprendizagem:** O aluno deve entender o papel das variáveis na gestão do estado de uma aplicação e ser capaz de declarar variáveis e constantes de forma apropriada em múltiplas linguagens.
        -   **Exemplos de Código (Declaração de variável `player_score` e constante `MAX_CONNECTIONS`):**
            -   **GDScript:**
                ```gdscript
                var player_score = 100
                const MAX_CONNECTIONS = 8
                ```
            -   **Python:**
                ```python
                player_score = 100
                MAX_CONNECTIONS = 8 # Por convenção
                ```
            -   **JavaScript:**
                ```javascript
                let playerScore = 100;
                const MAX_CONNECTIONS = 8;
                ```
            -   **C++:**
                ```cpp
                int playerScore = 100;
                const int MAX_CONNECTIONS = 8;
                ```
        -   **Exercício Prático Sugerido:** Em quatro arquivos separados (um para cada linguagem), declarar variáveis que definem o estado inicial de um personagem (ex: `health`, `stamina`, `ammo_count`) e constantes para seus atributos base (ex: `MAX_HEALTH`, `BASE_SPEED`).

    -   **Aula 0.3: Tipos de Dados Primitivos: O Contrato de Dados**
        -   **Conceito Central:** Explicar os tipos de dados como um **contrato** que define a natureza dos dados que uma variável pode conter. Este contrato informa ao compilador/interpretador como alocar memória, quais operações são válidas e como os dados devem ser representados binariamente. A aula abordará a diferença entre sistemas de tipagem estática (verificação em tempo de compilação, como C++) e dinâmica (verificação em tempo de execução, como Python/JS), e a abordagem híbrida do GDScript.
        -   **Tópicos a Cobrir:**
            -   Inteiros (`int`), Ponto Flutuante (`float`, `double`), Booleanos (`bool`), Caracteres (`char`) e Strings (`String`).
            -   Implicações de performance e segurança da tipagem estática vs. flexibilidade da tipagem dinâmica.
            -   Inferência de tipo.
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de selecionar o tipo de dado primitivo apropriado para representar diferentes informações, entendendo as implicações de sua escolha em diferentes sistemas de tipagem.
        -   **Exemplos de Código (Declaração de `health` com tipagem explícita):**
            -   **GDScript:** `var health: int = 100`
            -   **Python:** `health: int = 100` (Type Hint)
            -   **JavaScript (com JSDoc):**
                ```javascript
                /** @type {number} */
                let health = 100;
                ```
            -   **C++:** `int health = 100;`
        -   **Exercício Prático Sugerido:** Refatorar o exercício anterior para usar a sintaxe de tipagem explícita de cada linguagem. Discutir em comentários por que `health` não deveria ser um `String` e quais seriam as consequências de usar um `float` em vez de um `int`.

    -   **Aula 0.4: Operadores e Expressões: Manipulando o Estado**
        -   **Conceito Central:** Apresentar operadores como símbolos que representam computações sobre operandos (variáveis e literais). Uma combinação de operadores e operandos forma uma expressão, que é avaliada para produzir um novo valor. Esta é a forma fundamental de manipular o estado da aplicação.
        -   **Tópicos a Cobrir:**
            -   Operadores Aritméticos (`+`, `-`, `*`, `/`, `%`).
            -   Operadores de Atribuição (`=`, `+=`, `-=`).
            -   Operadores de Comparação (`==`, `!=`, `>`, `<`, `>=`, `<=`).
            -   Operadores Lógicos (`&&`/`and`, `||`/`or`, `!`/`not`).
            -   Precedência de operadores.
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de construir expressões complexas para realizar cálculos e avaliações lógicas, entendendo como essas expressões são avaliadas.
        -   **Exemplos de Código (Verificar se o jogador está vivo E tem mana):**
            -   **GDScript:** `if health > 0 and mana >= 10:`
            -   **Python:** `if health > 0 and mana >= 10:`
            -   **JavaScript:** `if (health > 0 && mana >= 10) { ... }`
            -   **C++:** `if (health > 0 && mana >= 10) { ... }`
        -   **Exercício Prático Sugerido:** Escrever uma expressão que calcula o dano final de um ataque, aplicando um modificador de crítico. Ex: `final_damage = base_damage * damage_multiplier; if is_critical_hit: final_damage *= 2;`. Implementar em duas linguagens diferentes.

    -   **Aula 0.5: Estruturas de Controle de Fluxo: Decisão e Iteração**
        -   **Conceito Central:** Unificar condicionais e loops como as estruturas que permitem a execução não-linear de um algoritmo. **Decisão (Branching)** com `if/elif/else` permite que o programa execute diferentes caminhos de código com base em expressões booleanas. **Iteração (Looping)** com `for/while` permite a execução repetida de um bloco de código, seja por um número definido de vezes ou enquanto uma condição for verdadeira.
        -   **Tópicos a Cobrir:**
            -   Estruturas `if`, `elif`/`else if`, `else`.
            -   Estruturas `switch`/`match` como alternativa a `if`s aninhados.
            -   Loops `while` (condição no início) e `do-while` (condição no final).
            -   Loops `for` (iteração sobre coleções) e `for` tradicional (baseado em contador).
            -   Controle de loop: `break` e `continue`.
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de utilizar estruturas de controle de fluxo para criar algoritmos complexos com múltiplos caminhos de execução e lógica repetitiva.
        -   **Exemplos de Código (Iterar sobre um inventário e imprimir cada item):**
            -   **GDScript:**
                ```gdscript
                for item in inventory:
                    print(item)
                ```
            -   **Python:**
                ```python
                for item in inventory:
                    print(item)
                ```
            -   **JavaScript:**
                ```javascript
                for (const item of inventory) {
                    console.log(item);
                }
                ```
            -   **C++:**
                ```cpp
                for (const auto& item : inventory) {
                    std::cout << item << std::endl;
                }
                ```
        -   **Exercício Prático Sugerido:** Escrever um programa que itera de 1 a 100. Para cada número, ele deve verificar: se for múltiplo de 3, imprime "Fizz"; se for múltiplo de 5, imprime "Buzz"; se for múltiplo de ambos, imprime "FizzBuzz"; caso contrário, imprime o próprio número. Este é o clássico problema "FizzBuzz".

    -   **Aula 0.6: Funções: Abstração e Reutilização de Lógica**
        -   **Conceito Central:** Apresentar funções como a primeira e mais fundamental ferramenta de **abstração** em programação. Funções permitem encapsular uma sequência de instruções em uma unidade lógica nomeada, que pode ser parametrizada (via argumentos) e pode produzir um resultado (via valor de retorno). Elas são a espinha dorsal do princípio DRY (Don't Repeat Yourself) e da decomposição de problemas.
        -   **Tópicos a Cobrir:**
            -   Definição vs. Chamada de função.
            -   Parâmetros/Argumentos e Assinatura da Função.
            -   Valores de Retorno.
            -   Funções `void` / Procedimentos (que não retornam valor).
            -   Passagem de argumentos por valor vs. por referência (introdução conceitual).
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de identificar blocos de código repetidos e refatorá-los em funções reutilizáveis, melhorando a legibilidade, manutenibilidade e organização do código.
        -   **Exemplos de Código (Função que calcula dano com base na força e defesa):**
            -   **GDScript:**
                ```gdscript
                func calculate_damage(attack_power: int, defense: int) -> int:
                    var damage = attack_power - defense
                    return max(0, damage)
                ```
            -   **Python:**
                ```python
                def calculate_damage(attack_power: int, defense: int) -> int:
                    damage = attack_power - defense
                    return max(0, damage)
                ```
            -   **JavaScript:**
                ```javascript
                /** @param {number} attackPower @param {number} defense @returns {number} */
                function calculateDamage(attackPower, defense) {
                    const damage = attackPower - defense;
                    return Math.max(0, damage);
                }
                ```
            -   **C++:**
                ```cpp
                int calculateDamage(int attackPower, int defense) {
                    int damage = attackPower - defense;
                    return std::max(0, damage);
                }
                ```
        -   **Exercício Prático Sugerido:** Criar uma função `is_player_alive(health)` que recebe um valor de vida e retorna `true` se a vida for maior que 0, e `false` caso contrário. Chamar esta função dentro de uma estrutura `if`.

    -   **Aula 0.7: Estruturas de Dados: Organizando Coleções de Informações**
        -   **Conceito Central:** Introduzir as duas principais estruturas de dados para coleções: **Arrays/Listas** (coleções ordenadas, contíguas ou não, acessadas por um índice numérico) e **Dicionários/Mapas/Hashes** (coleções de pares chave-valor, não ordenadas, acessadas por uma chave única). Discutir os trade-offs de performance (busca, inserção, remoção) e os casos de uso ideais para cada uma.
        -   **Tópicos a Cobrir:**
            -   Arrays/Listas: Acesso por índice, iteração, métodos comuns (`append`, `pop`, `size`).
            -   Dicionários/Mapas: Acesso por chave, iteração sobre chaves/valores, verificação de existência de chave.
            -   A importância de escolher a estrutura de dados correta para a performance do algoritmo.
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de modelar dados complexos (como um inventário ou uma lista de stats) usando a estrutura de dados apropriada.
        -   **Exemplos de Código (Definir um inventário e os stats de um jogador):**
            -   **GDScript:**
                ```gdscript
                var inventory: Array = ["Sword", "Shield"]
                var stats: Dictionary = {"str": 10, "dex": 8}
                ```
            -   **Python:**
                ```python
                inventory: list = ["Sword", "Shield"]
                stats: dict = {"str": 10, "dex": 8}
                ```
            -   **JavaScript:**
                ```javascript
                const inventory = ["Sword", "Shield"];
                const stats = { str: 10, dex: 8 };
                ```
            -   **C++:**
                ```cpp
                #include <vector>
                #include <string>
                #include <map>
                std::vector<std::string> inventory = {"Sword", "Shield"};
                std::map<std::string, int> stats = {{"str", 10}, {"dex", 8}};
                ```
        -   **Exercício Prático Sugerido:** Modelar um "bestiário". Criar uma lista de dicionários, onde cada dicionário representa um monstro e contém suas estatísticas (nome, hp, fraquezas - que pode ser outra lista).

    -   **Aula 0.8: Paradigmas: Introdução à Orientação a Objetos (OOP)**
        -   **Conceito Central:** Apresentar a Orientação a Objetos como um paradigma para modelar sistemas complexos, baseando-se na interação de entidades autocontidas (objetos). Definir **Classe** como um "blueprint" que define a estrutura (propriedades) e o comportamento (métodos) de uma categoria de objetos. Um **Objeto** é uma instância concreta de uma classe, com seu próprio estado. O princípio chave é o **encapsulamento**: agrupar dados e as funções que operam nesses dados.
        -   **Tópicos a Cobrir:**
            -   Classe vs. Objeto (Instância).
            -   Propriedades/Atributos (o estado do objeto).
            -   Métodos (o comportamento do objeto).
            -   O conceito de `self` ou `this` como uma referência ao próprio objeto dentro de seus métodos.
            -   Construtores (`_init`, `__init__`, `constructor`).
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de criar classes simples para modelar entidades de um jogo, encapsulando seus dados e comportamentos em uma única unidade lógica.
        -   **Exemplos de Código (Classe `Player` simples):**
            -   **GDScript:**
                ```gdscript
                class_name Player
                var health: int
                func _init(start_health: int):
                    self.health = start_health
                func take_damage(amount: int):
                    self.health -= amount
                ```
            -   **Python:**
                ```python
                class Player:
                    def __init__(self, start_health: int):
                        self.health = start_health
                    def take_damage(self, amount: int):
                        self.health -= amount
                ```
            -   **JavaScript:**
                ```javascript
                class Player {
                    constructor(startHealth) {
                        this.health = startHealth;
                    }
                    takeDamage(amount) {
                        this.health -= amount;
                    }
                }
                ```
            -   **C++:**
                ```cpp
                class Player {
                public:
                    int health;
                    Player(int startHealth) {
                        this->health = startHealth;
                    }
                    void takeDamage(int amount) {
                        this->health -= amount;
                    }
                };
                ```
        -   **Exercício Prático Sugerido:** Criar uma classe `Item` com propriedades `name` e `value`. Criar duas instâncias (objetos) dessa classe, uma para uma "Poção" e outra para uma "Espada", cada uma com valores diferentes.

    -   **Aula 0.9: Serialização de Dados: Persistência de Estado**
        -   **Conceito Central:** Introduzir o conceito de **serialização**: o processo de converter uma estrutura de dados ou estado de um objeto em um formato que pode ser armazenado (ex: em um arquivo) ou transmitido e, posteriormente, reconstruído (desserialização). Foco no **JSON (JavaScript Object Notation)** como um formato de serialização universal, legível por humanos e facilmente mapeável para Dicionários/Mapas/Objetos. Apresentar o formato **TRES** do Godot como uma forma de serialização de `Resource`s integrada à engine, otimizada para o editor.
        -   **Tópicos a Cobrir:**
            -   O problema da persistência: dados em memória são voláteis.
            -   O que é um formato de serialização de dados?
            -   Estrutura e sintaxe do JSON.
            -   Mapeamento 1:1 entre um Dicionário/Objeto em código e sua representação JSON.
            -   Visão geral de como as linguagens fornecem bibliotecas para parsear (ler) e gerar JSON.
        -   **Objetivo de Aprendizagem:** O aluno deve entender o que é serialização, por que ela é necessária para salvar o progresso de um jogo, e ser capaz de ler e escrever uma estrutura de dados simples no formato JSON.
        -   **Exemplo de Código (Representação de um objeto `player_data` em JSON):**
            -   **Código (Python/JS/GDScript):**
                ```
                player_data = {
                    "name": "Bruno",
                    "level": 5,
                    "inventory": ["Sword", "Shield"],
                    "is_active": true
                }
                ```
            -   **JSON (Arquivo `save.json`):**
                ```json
                {
                    "name": "Bruno",
                    "level": 5,
                    "inventory": [
                        "Sword",
                        "Shield"
                    ],
                    "is_active": true
                }
                ```
        -   **Exercício Prático Sugerido:** Pegar a estrutura de dados do "bestiário" do exercício 0.7 e escrevê-la manualmente em um arquivo de texto com a sintaxe JSON correta. Verificar se a sintaxe está válida usando um validador online.

---

## **Módulo 01: Godot Engine: Conceitos Essenciais**
-   **Objetivo:** Conectar os conceitos universais do Módulo 00 com a implementação e filosofia específicas da Godot. Este módulo trata a engine como um framework de software com decisões de design e arquitetura que podem ser analisadas e compreendidas.

-   **Aulas:**
    -   **1.1: A Filosofia Godot: Composição de Cenas e a Estrutura de Árvore**
        -   **Conceito Central:** Analisar a arquitetura de Cenas e Nós da Godot sob a ótica de padrões de design de software. A Árvore de Cenas é uma implementação do padrão **Composite**, onde tanto um Nó individual quanto uma Cena inteira (uma árvore de Nós) podem ser tratados de forma uniforme. A aula enfatiza como a Godot favorece a **Composição sobre a Herança**, um princípio fundamental de design de software que promove a reutilização e a modularidade.
        -   **Tópicos a Cobrir:**
            -   O Nó como a unidade atômica de funcionalidade.
            -   A Cena como um "blueprint" de Nós reutilizável.
            -   Instanciação de Cenas como a principal forma de construir o mundo do jogo.
            -   Comparação teórica: Herança (`extends CharacterBody2D`) vs. Composição (um Nó `Player` que *tem* um Nó `Sprite2D` e um Nó `CollisionShape2D` como filhos).
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de explicar por que a abordagem de composição da Godot é poderosa e como ela se traduz na estrutura de Cenas e Nós.
        -   **Exercício Prático Sugerido:** Criar uma cena `Bullet.tscn` (`Area2D` + `Sprite2D`). Criar uma cena `Player.tscn`. No script do `Player`, instanciar a cena `Bullet` como filha do nó raiz do jogo, demonstrando como Cenas podem criar outras Cenas.

    -   **1.2: Tour pela Interface: Anatomia de um Ambiente de Desenvolvimento Integrado (IDE)**
        -   **Conceito Central:** Apresentar o editor da Godot como um IDE especializado para desenvolvimento de jogos. Cada painel é uma ferramenta para uma tarefa específica: o **Viewport** para manipulação espacial, o **Inspetor** como uma interface de reflexão para as propriedades de um objeto, o **Sistema de Arquivos** para gerenciamento de ativos, e o **Painel Inferior** para depuração e automação de animação.
        -   **Tópicos a Cobrir:**
            -   Fluxo de trabalho: da importação de um asset no FileSystem, para a sua utilização em uma Cena no Viewport, à configuração de suas propriedades no Inspetor.
            -   O conceito de "contexto": como as ferramentas e opções mudam dependendo do Nó selecionado.
            -   Uso do Debugger para inspecionar o estado do jogo em tempo de execução.
        -   **Objetivo de Aprendizagem:** O aluno deve se familiarizar com o fluxo de trabalho profissional dentro do editor, entendendo o propósito de cada ferramenta e como elas se interconectam.
        -   **Exercício Prático Sugerido:** Importar uma imagem. Criar um `Sprite2D` e arrastar a imagem para sua propriedade `Texture` no Inspetor. Adicionar um script ao sprite, colocar um `breakpoint` na função `_process` e rodar o jogo em modo de depuração para inspecionar suas variáveis.

    -   **1.3: GDScript na Prática: O Ciclo de Vida de um Objeto e a Serialização de Propriedades**
        -   **Conceito Central:** Conectar as funções de ciclo de vida (`_ready`, `_process`, `_physics_process`) ao conceito de **Game Loop** e **programação orientada a eventos**. São métodos "callback" que a engine invoca em pontos específicos da execução de um objeto. A anotação `@export` é apresentada como um mecanismo de **serialização e reflexão** que expõe uma propriedade do script para o editor, permitindo a sua manipulação e persistência no arquivo de cena (`.tscn`).
        -   **Tópicos a Cobrir:**
            -   A ordem de execução: `_init`, `_enter_tree`, `_ready`.
            -   A diferença entre `_process` (taxa de quadros variável) e `_physics_process` (taxa de quadros fixa) e as implicações para a lógica de jogo.
            -   O parâmetro `delta` como o tempo decorrido, essencial para um movimento independente de framerate.
            -   Como `@export` transforma uma variável de script em uma propriedade serializável do Nó.
        -   **Objetivo de Aprendizagem:** O aluno deve compreender como dar comportamento a um Nó (Objeto) e como expor seus atributos (Propriedades) para o editor de forma controlada, entendendo o fluxo de execução de um script Godot.
        -   **Exercício Prático Sugerido:** Criar um script com uma variável `@export var speed: float = 100.0`. Na função `_physics_process`, mover o nó horizontalmente usando `position.x += speed * delta`. Observar como alterar o valor de `speed` no Inspetor afeta o comportamento em tempo real.

    -   **1.4: Gerenciamento de Input: Abstração e Polling de Estado**
        -   **Conceito Central:** Apresentar o `InputMap` como uma **camada de abstração** que desacopla a ação lógica do jogo (ex: "pular") do evento de hardware (ex: "tecla de espaço pressionada"). A classe `Input` é um Singleton global que serve como API para consultar (**polling**) o estado deste sistema de eventos em cada frame, uma abordagem comum em game loops.
        -   **Tópicos a Cobrir:**
            -   Configurando ações e mapeando múltiplos inputs (teclado, controle) para a mesma ação.
            -   Polling de estado (`is_action_pressed`) vs. detecção de evento (`is_action_just_pressed`).
            -   Uso de `Input.get_vector` para simplificar o código de movimento 2D.
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de implementar um sistema de input robusto e remapeável, uma prática padrão em jogos comerciais.
        -   **Exercício Prático Sugerido:** Criar um `InputMap` para um personagem de plataforma com ações "move_left", "move_right" e "jump". Implementar a lógica de movimento em `_physics_process` usando `Input.get_axis` e a lógica de pulo em `_physics_process` usando `Input.is_action_just_pressed`.

    -   **1.5 & 1.6: O Motor de Física: Abstrações de Corpos e Filtragem de Colisão**
        -   **Conceito Central:** Discutir os diferentes Nós de corpo de física (`CharacterBody`, `RigidBody`, `StaticBody`, `Area`) como diferentes **abstrações de simulação física**, cada uma com um trade-off entre controle do programador e controle da engine. As Camadas e Máscaras de Colisão são explicadas como um **sistema de filtragem espacial eficiente**, frequentemente implementado com operações bitwise, para otimizar a detecção de colisões e definir regras de interação.
        -   **Tópicos a Cobrir:**
            -   `CharacterBody2D`: Movimento controlado por script com resolução de colisão (`move_and_slide`).
            -   `RigidBody2D`: Movimento controlado pela simulação física (forças, impulsos).
            -   `Area2D`: Detecção de sobreposição, não colisão sólida.
            -   `StaticBody2D`: Colisor imóvel e otimizado.
            -   Configuração de Layers (em qual grupo eu estou?) e Masks (quais grupos eu detecto?).
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de escolher o corpo de física apropriado para cada entidade e configurar suas interações de forma precisa e otimizada.
        -   **Exercício Prático Sugerido:** Criar um projétil (`Area2D`) na camada "player_bullet" que só detecta a máscara "enemies". Criar um inimigo (`CharacterBody2D`) na camada "enemies" que só detecta a máscara "player_bullet" e "world".

    -   **1.7: Sinais: O Padrão Observer em Prática**
        -   **Conceito Central:** Apresentar o sistema de Sinais da Godot como uma implementação nativa do padrão de design **Observer (Publish/Subscribe)**. Este mecanismo promove o **baixo acoplamento** entre objetos, permitindo que um objeto (o "Publisher") emita um evento sem precisar conhecer a identidade ou a implementação dos objetos (os "Subscribers") que reagirão a ele.
        -   **Tópicos a Cobrir:**
            -   Conectando sinais pelo editor (aba Nó) e por código (`connect`).
            -   Criando sinais customizados (`signal my_signal(param1, param2)`).
            -   Emitindo sinais (`my_signal.emit(value1, value2)`).
            -   Vantagens: código mais modular, Cenas que funcionam de forma independente.
        -   **Objetivo de Aprendizagem:** O aluno deve entender as vantagens de uma arquitetura orientada a eventos e ser capaz de usar sinais para criar código modular e de fácil manutenção.
        -   **Exercício Prático Sugerido:** Criar um `Button` que, ao ter seu sinal `pressed` emitido, chama uma função em um script pai. Este script pai, por sua vez, emite um sinal customizado `game_started`. Um terceiro nó (ex: um `AudioManager`) conecta-se a `game_started` para tocar uma música.

    -   **1.8: Arquitetura com `Resource`: Serialização e Design Orientado a Dados**
        -   **Conceito Central:** Aprofundar no conceito de serialização do Módulo 00, apresentando `Resource` como o objeto de dados serializável fundamental da Godot. Esta aula introduz o paradigma de **Design Orientado a Dados**, onde separamos explicitamente os **dados** (o que um objeto *é*, ex: `WeaponData.tres`) do **comportamento** (o que um objeto *faz*, ex: o script no Nó do jogador que usa a arma).
        -   **Tópicos a Cobrir:**
            -   Criar um script que herda de `Resource` e usa `class_name`.
            -   Adicionar propriedades com `@export` ao Recurso.
            -   Criar múltiplos arquivos `.tres` a partir do mesmo script de Recurso.
            -   Exportar uma variável em um Nó que espera um tipo de Recurso customizado.
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de modelar os dados de seu jogo usando `Resource`s customizados, criando uma arquitetura mais flexível e escalável.
        -   **Exercício Prático Sugerido:** Criar um `EnemyData.gd` que herda de `Resource` com stats como `health`, `speed`, `damage`. Criar dois arquivos: `slime.tres` e `goblin.tres`, com valores diferentes. Criar uma cena de inimigo cujo script tem `@export var data: EnemyData` e usa esses valores na sua lógica.

    -   **1.9: Construção de UI: O Sistema de Layout Retido**
        -   **Conceito Central:** Explicar os Nós `Control` como os componentes de um **sistema de GUI de modo retido (retained mode)**. O foco será nos Nós `Container`, que são controladores de layout que executam algoritmos específicos (box layout, grid layout) para organizar seus filhos automaticamente, permitindo a criação de interfaces responsivas que se adaptam a diferentes resoluções e aspect ratios.
        -   **Tópicos a Cobrir:**
            -   Âncoras e Margens: como os `Control`s se posicionam em relação ao seu pai.
            -   `VBoxContainer`, `HBoxContainer`, `GridContainer`, `CenterContainer`.
            -   `Size Flags`: como um `Control` se comporta dentro de um `Container` (Fill, Expand, Shrink).
            -   O nó `CanvasLayer` para garantir que a UI seja desenhada sobre o jogo.
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de construir interfaces de usuário que se adaptam a diferentes tamanhos de tela, utilizando os algoritmos de layout dos containers.
        -   **Exercício Prático Sugerido:** Criar um HUD para um jogo. Usar um `MarginContainer` para as bordas, um `HBoxContainer` no topo para informações como Vidas e Pontos, e um `VBoxContainer` no canto para um minimapa ou lista de quests.

    -   **1.10: Sistemas de Animação: Keyframing e Máquinas de Estado**
        -   **Conceito Central:** Apresentar o `AnimatedSprite2D` como uma simples máquina de estados para animações de sprite. O `AnimationPlayer` será introduzido como um poderoso **motor de tweening e keyframing genérico**, capaz de interpolar qualquer propriedade de qualquer Nó ao longo do tempo. Ele é uma ferramenta de automação de sequências, não apenas de animação visual, podendo chamar métodos, emitir sinais e até animar shaders.
        -   **Tópicos a Cobrir:**
            -   Criando `SpriteFrames` para o `AnimatedSprite2D`.
            -   A timeline do `AnimationPlayer`: adicionando tracks e keyframes.
            -   Animando propriedades (`position`, `scale`, `modulate`).
            -   Usando a "Call Method Track" para sincronizar código com animações.
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de usar ambas as ferramentas para criar animações de personagem e de interface, e sincronizar eventos de gameplay com as animações.
        -   **Exercício Prático Sugerido:** Criar uma animação de ataque em um `AnimationPlayer` que move um `Sprite2D` para frente e para trás. Adicionar uma "Call Method Track" que chama uma função `deal_damage` no meio da animação.

    -   **1.11: Timers e Áudio: Agendamento de Eventos e Espacialização**
        -   **Conceito Central:** Apresentar o `Timer` como uma abstração para o **agendamento de eventos assíncronos**, utilizando o padrão Observer (sinal `timeout`) para notificar a conclusão. Os nós de áudio serão diferenciados pelo conceito de **espacialização**: `AudioStreamPlayer` para áudio global (não-posicional, como música de fundo) e `AudioStreamPlayer2D/3D` para áudio diegético (posicional, como o som de um passo), cuja percepção depende da sua posição no espaço do jogo.
        -   **Tópicos a Cobrir:**
            -   Configurando `Timer` para `one_shot` (cooldowns) ou repetido (spawners).
            -   `Audio Buses`: como rotear e aplicar efeitos a diferentes categorias de som (SFX, Música, Voz).
            -   Diferença entre áudio diegético e não-diegético no design de som.
        -   **Objetivo de Aprendizagem:** O aluno deve ser capaz de usar timers para lógicas baseadas em tempo e implementarmos áudio de forma eficaz, compreendendo os diferentes nós de áudio e seus casos de uso.
        -   **Exercício Prático Sugerido:** Criar um spawner de inimigos que usa um `Timer` repetitivo. A cada `timeout`, ele instancia uma cena de inimigo. Adicionar um `AudioStreamPlayer2D` na cena do inimigo para que ele emita um som que pode ser ouvido de perto.

---

## **Módulo 02: O Laboratório de Mecânicas: Construindo seu Primeiro Jogo**
-   **Filosofia do Módulo:** Em vez de criar um jogo específico, vamos construir um "Laboratório de Testes". Esta é a nossa sandbox, onde cada aula adiciona uma nova mecânica interativa. Essa abordagem espelha o processo real de desenvolvimento: prototipar, testar e refinar sistemas de forma isolada antes de integrá-los em um jogo completo.

-   **Aulas:**
    -   **Aula 2.1: Setup do Ambiente com TileMaps**
        -   **Conceito Central:** Estruturação de um nível 2D usando o sistema de TileMap da Godot.
        -   **Projeto:** Criar a cena "Laboratorio.tscn". Desenvolver um `TileSet` com texturas de chão e parede, definindo suas propriedades de colisão. "Pintar" a arena do laboratório.
        -   **Objetivo de Aprendizagem:** O aluno será capaz de criar e configurar um `TileSet` para construir níveis 2D de forma eficiente.

    -   **Aula 2.2: O Player e o Input Básico**
        -   **Conceito Central:** Implementar um personagem controlável, traduzindo input do teclado em movimento e dando feedback visual com animações simples.
        -   **Projeto:** Criar a cena `Player.tscn` (`CharacterBody2D`). Configurar o `InputMap` para movimento. Implementar o movimento top-down com `move_and_slide()`. Usar um `AnimatedSprite2D` para animações de "Idle" e "Walk".
        -   **Objetivo de Aprendizagem:** O aluno dominará o padrão de código para um `CharacterBody2D` e saberá como gerenciar estados de animação simples.

    -   **Aula 2.3: Câmera 2D Suave e com Limites**
        -   **Conceito Central:** Configurar uma câmera que segue o jogador de forma profissional, com movimento suave e restrita aos limites do nível.
        -   **Projeto:** Adicionar uma `Camera2D` à cena do Player. Habilitar o `smoothing` para um seguimento fluido e definir os `limits` da câmera com base no tamanho do `TileMap`.
        -   **Objetivo de Aprendizagem:** O aluno saberá como usar e configurar uma `Camera2D` para criar uma experiência de jogo polida.

    -   **Aula 2.4: O Alvo Estático (Dummy) e Feedback de Dano**
        -   **Conceito Central:** Criar a primeira entidade interativa e fornecer feedback visual imediato para as ações do jogador.
        -   **Projeto:** Criar a cena `Dummy.tscn` (`StaticBody2D`). Criar uma cena `FloatingText.tscn` que usa um `Tween` para animar sua posição e opacidade. O Dummy, ao ser atingido, instanciará este texto.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a instanciar cenas para efeitos visuais e a usar `Tween` para animações procedurais.

    -   **Aula 2.5: Arquitetura de Armas com `Resource`**
        -   **Conceito Central:** Introduzir o Design Orientado a Dados, separando os dados da arma (dano, velocidade do projétil) de sua lógica.
        -   **Projeto:** Criar um script `WeaponData.gd` que herda de `Resource`. Criar os arquivos `pistol.tres` e `rifle.tres` com stats diferentes. O Player terá uma variável `@export var weapon: WeaponData`.
        -   **Objetivo de Aprendizagem:** O aluno entenderá o conceito e a vantagem de usar `Resource`s para definir e gerenciar os dados do jogo.

    -   **Aula 2.6: Sistema de Tiro e Filtragem de Colisão**
        -   **Conceito Central:** Instanciar projéteis e usar o sistema de camadas de física para controlar precisamente o que pode atingir o quê.
        -   **Projeto:** Criar a cena `Bullet.tscn` (`Area2D`). O Player, ao atirar, instancia a bala usando os dados da `WeaponData` atual. Configurar `CollisionLayer` e `CollisionMask` para que a bala do jogador só interaja com inimigos.
        -   **Objetivo de Aprendizagem:** O aluno dominará a instanciação de cenas e a configuração do sistema de física para criar interações de combate robustas.

    -   **Aula 2.7: O Gerenciador Global e a HUD Inicial**
        -   **Conceito Central:** Gerenciar o estado global do jogo (dados que precisam ser acessados por múltiplas cenas) usando um Autoload/Singleton.
        -   **Projeto:** Criar um Autoload `GameManager.gd`. Criar uma `HUD.tscn` (`CanvasLayer`) com um `Label` para exibir o nome da arma atual. O `GameManager` terá um sinal `weapon_changed` que a HUD ouvirá para se atualizar.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a usar o padrão Singleton em Godot para gerenciar o estado do jogo e facilitar a comunicação entre sistemas desacoplados.

    -   **Aula 2.8: Coletáveis com Cooldown (Health Pack)**
        -   **Conceito Central:** Criar um objeto que pode ser coletado e que gerencia seu próprio estado de respawn usando um `Timer`.
        -   **Projeto:** Criar a cena `HealthPack.tscn` (`Area2D`). Ao ser coletado pelo Player, ele se desativa (visual e colisão) e ativa um `Timer` interno. Ao final do `Timer`, ele se reativa.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a gerenciar o ciclo de vida de um objeto (ativo/inativo) e a usar `Timer` para lógicas de cooldown.

    -   **Aula 2.9: Sistema de Drop (Moedas)**
        -   **Conceito Central:** Fazer um inimigo "dropar" múltiplos itens colecionáveis após ser derrotado.
        -   **Projeto:** Criar a cena `Coin.tscn` (`Area2D`). Ao ser destruído, o Dummy instancia várias moedas, cada uma recebendo um impulso inicial aleatório para um efeito de "explosão". O Player as coleta ao passar por cima.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a usar `randf_range` para adicionar variedade e a gerenciar a criação e destruição de múltiplos objetos dinâmicos.

    -   **Aula 2.10: Desbloqueio de Itens (Coletando a Arma)**
        -   **Conceito Central:** Criar um item no mundo que desbloqueia permanentemente uma nova opção para o jogador.
        -   **Projeto:** Criar a cena `WeaponPickup.tscn` que exporta uma `WeaponData`. Colocar uma instância no laboratório com o `rifle.tres`. Ao coletar, o `GameManager` adiciona o rifle a uma lista de armas desbloqueadas.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a criar sistemas de progressão e desbloqueio.

    -   **Aula 2.11: Troca de Armas e Sinais via Código**
        -   **Conceito Central:** Implementar a lógica de troca entre as armas desbloqueadas e conectar a UI a essa lógica via código para maior flexibilidade.
        -   **Projeto:** Implementar a troca de armas no Player (ex: com a roda do mouse). O Player emite um sinal `weapon_switched`. A HUD, em seu `_ready()`, se conecta a este sinal (`player.weapon_switched.connect(self.update_weapon_label)`) para se atualizar.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a criar e conectar sinais via código, um pilar para arquiteturas mais complexas.

    -   **Aula 2.12: O Inimigo Móvel (A Abordagem Direta)**
        -   **Conceito Central:** Criar um adversário com comportamento autônomo, implementando a lógica de movimento e ataque diretamente no script.
        -   **Projeto:** Criar a cena `MobileEnemy.tscn` (`CharacterBody2D`) e seu script. A lógica de patrulha e tiro é codificada diretamente no script, misturando dados e comportamento.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a criar uma IA funcional de forma rápida, servindo como contraponto para a refatoração seguinte.

    -   **Aula 2.13: Unificação e Refatoração (A Arquitetura com `Resource`)**
        -   **Conceito Central:** Refatorar os inimigos `Dummy` e `MobileEnemy` em uma única cena `Enemy.tscn`, usando `Resource`s para diferenciar os comportamentos.
        -   **Projeto:** Criar `Enemy.tscn` e `Enemy.gd`. Criar `EnemyData.gd` com stats e flags (`can_move`, `can_shoot`). Criar `dummy_data.tres` e `patrol_bot_data.tres`. O script `Enemy.gd` usará o `Resource` para definir seu comportamento.
        -   **Objetivo de Aprendizagem:** O aluno entenderá o "porquê" do Design Orientado a Dados, vendo na prática como ele leva a um código mais limpo e reutilizável.

    -   **Aula 2.14: Adicionando Inteligência (A Máquina de Estados - FSM)**
        -   **Conceito Central:** Evoluir a arquitetura unificada, adicionando uma FSM para criar um comportamento de IA dinâmico (patrulha, perseguição, ataque).
        -   **Projeto:** Adicionar a flag `use_fsm` ao `EnemyData.gd` e criar o `hunter_data.tres`. Adicionar um `StateMachine` e os `State`s à cena `Enemy.tscn`. A FSM só será ativada se `data.use_fsm` for verdadeiro.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a implementar uma FSM para gerenciar estados de IA e a usar `Resource`s para ativar sistemas inteiros.

    -   **Aula 2.15: Spawner de Alvos e Gerenciamento por Grupos**
        -   **Conceito Central:** Criar um sistema que instancia inimigos em intervalos e gerenciá-los como uma coleção usando o sistema de Grupos.
        -   **Projeto:** Criar um `Spawner.tscn` que usa um `Timer` para instanciar `Enemy.tscn`. Adicionar cada inimigo ao grupo "alvos". Criar um botão na UI que chama `get_tree().call_group("alvos", "queue_free")` para limpar a arena.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a usar `Timer`s para spawning e o sistema de Grupos para gerenciamento de múltiplos objetos.

    -   **Aula 2.16: Gerenciando a Vida do Player e a HUD Completa**
        -   **Conceito Central:** Fechar o loop de combate, permitindo que o jogador também receba dano.
        -   **Projeto:** Adicionar o sinal `health_changed` ao `GameManager`. Criar uma "Bala de Inimigo" em uma layer diferente. Ajustar as máscaras de colisão para que o Player seja atingido. A HUD se conecta ao `health_changed` para exibir a vida do jogador (ex: com uma barra de vida).
        -   **Objetivo de Aprendizagem:** O aluno será capaz de gerenciar o estado completo do jogador e criar uma HUD reativa.

    -   **Aula 2.17: O Sistema de Save/Load**
        -   **Conceito Central:** Persistir o estado do jogo em um arquivo para que o progresso do jogador não seja perdido.
        -   **Projeto:** Implementar as funções `save_game()` e `load_game()` no `GameManager`. Elas irão coletar os dados relevantes (vida, moedas, armas desbloqueadas), convertê-los para o formato JSON e usar a classe `FileAccess` para escrever/ler o arquivo `savegame.json`.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a serializar dados para JSON e a realizar operações de arquivo para salvar e carregar o progresso.

    -   **Aula 2.18: O Sistema de Pause**
        -   **Conceito Central:** Implementar uma funcionalidade de pause que congela a ação e exibe um menu.
        -   **Projeto:** Criar um `PauseMenu.tscn`. Ao pressionar "Esc", o jogo é pausado (`get_tree().paused = true`) e o menu de pause se torna visível. O menu deve ter seu `process_mode` definido como "When Paused" para continuar funcionando.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a usar a árvore de cenas para pausar o jogo e a gerenciar o processamento de nós individuais durante a pausa.

    -   **Aula 2.19: Polimento e "Juice": Feedback Sensorial**
        -   **Conceito Central:** Adicionar uma camada de polimento sobre as mecânicas existentes para torná-las mais satisfatórias através de feedback audiovisual.
        -   **Projeto:** Adicionar `AudioStreamPlayer` para sons de tiro, impacto e coleta. Implementar uma função de `camera_shake` na `Camera2D`. Criar uma cena `HitEffect.tscn` com `GPUParticles2D` para ser instanciada no ponto de colisão da bala.
        -   **Objetivo de Aprendizagem:** O aluno entenderá a importância do "Game Feel" e aprenderá a implementar efeitos de som, câmera e partículas.

    -   **Aula 2.20: Polimento Final com `AnimationTree`**
        -   **Conceito Central:** Elevar a qualidade da animação do personagem, substituindo a lógica manual do `AnimatedSprite2D` por uma `AnimationTree` para gerenciar as transições.
        -   **Projeto:** Adicionar um `AnimationPlayer` e uma `AnimationTree` ao Player. Criar uma `AnimationNodeStateMachine` dentro da `AnimationTree` para controlar as transições entre as animações de "Idle" e "Walk" com base na velocidade do jogador.
        -   **Objetivo de Aprendizagem:** O aluno aprenderá a usar a ferramenta de animação mais poderosa e escalável da Godot para criar personagens mais vivos e reativos.


---

## **Módulo 03: Design de Jogos e Documentação**
-   **Objetivo:** Ensinar o "pensar" por trás de um jogo, desde a ideia inicial até a documentação profissional.
-   **Aulas:**
    -   **3.1: O que é um Game Loop?:** Definindo o ciclo central de gameplay.
    -   **3.2: O Game Design Document (GDD):** Como criar o documento que guiará seu projeto.
    -   **3.3: Princípios de Level Design:** Criando fases interessantes e com bom fluxo.
    -   **3.4: UI/UX para Jogos:** Desenhando interfaces que comunicam e não frustram.
    -   **3.5: Curva de Dificuldade e Engajamento:** Como manter o jogador desafiado e interessado.
    -   **3.6: O Pitch Deck:** Como "vender" sua ideia de jogo para uma equipe ou investidor.

---

## **Módulo 04: Arquitetura de Software para Jogos**
-   **Objetivo:** Implementar sistemas modulares e profissionais, explicando a engenharia de software por trás de cada um.
-   **Aulas:**
    -   **4.1: Arquitetura de Dados com `Resource`:** Implementando `CharacterStats.gd` e `ItemResource.gd`.
    -   **4.2: Sistemas Globais (Autoloads):** Configurando `SceneManager`, `AudioManager`, `SettingsManager`.
    -   **4.3: A Máquina de Estados (FSM):** Implementação do `StateMachine.gd` e `State.gd`.
    -   **4.4: Sistema de Interação:** Criando o componente `Interactable.tscn`.
    -   **4.5: Sistema de Inventário:** Implementação do `InventoryManager.gd` e da UI.
    -   **4.6: Sistema de Equipamentos:** Expandindo o inventário para modificar os stats do jogador.
    -   **4.7: Sistema de Combate:** Implementando `Hitbox`, `Hurtbox` e o `AttackData`.
    -   **4.8: Sistema de Feedback de Dano:** Criando o `FloatingTextManager`.
    -   **4.9: IA Inimiga Modular:** Construindo a cena `enemy_base.tscn` com FSM e `EnemyData.gd`.
    -   **4.10: Sistema de Níveis e XP:** Implementando o `ExperienceManager.gd`.
    -   **4.11: Sistema de Loot:** Criando `LootTable.gd` e o `LootSystem.gd`.
    -   **4.12: Sistema de Diálogo:** Implementando o `DialogueManager` e o `DialogueResource.gd`.
    -   **4.13: Sistema de Lojas e Moeda:** Criando o `WalletManager` e a `ShopUI`.
    -   **4.14: Sistema de Eventos e Flags:** Implementando o `WorldStateManager`.
    -   **4.15: Sistema de Save/Load:** Implementando o `SaveManager` e a interface de slots.
    -   **4.16: UI Responsiva:** Melhores práticas com `Container`s e `Theme`s.
    -   **4.17: Mapa e Minimapa:** Implementando o minimapa com `SubViewport`.
    -   **4.18: Cutscenes Simples:** Usando o `AnimationPlayer` para eventos de script.
    -   **4.19: Perigos Ambientais:** Criando a cena genérica `Hazard.tscn`.

---

## **Módulo 05: Projeto Principal: Integrando Sistemas Profissionais (ARPG 2D)**
-   **Objetivo:** Desenvolver um ARPG 2D complexo, focando na integração de todos os sistemas do Módulo 04.
-   **Aulas:**
    -   **5.1: Estrutura do Projeto:** Setup dos Autoloads e da arquitetura de dados.
    -   **5.2: O Jogador Profissional:** Implementando a FSM do jogador (`Idle`, `Move`, `Attack`, `Hurt`).
    -   **5.3: Integrando o Combate:** Conectando `Hitbox`/`Hurtbox` e `AttackData` no jogador e inimigos.
    -   **5.4: Construindo a IA Inimiga:** Criando inimigos com FSM (Patrulha, Perseguição, Ataque).
    -   **5.5: O Loop de Recompensa:** Conectando os sistemas de Loot e XP à morte dos inimigos.
    -   **5.6: Gerenciamento de Itens:** Construindo a UI de Inventário e Equipamentos.
    -   **5.7: Contando uma História:** Criando um NPC com Diálogo que entrega uma Quest.
    -   **5.8: A Economia do Jogo:** Implementando um NPC vendedor com uma Loja funcional.
    -   **5.9: O Mundo Persistente:** Usando o `SaveManager` para salvar e carregar o estado completo do jogo.
    -   **5.10: Montando o HUD Completo:** Barra de vida, XP, dinheiro e UI de quests.

---

## **Módulo 06: Tópicos Avançados de Gameplay**
-   **Objetivo:** Aprofundar em áreas técnicas que separam jogos amadores de produtos profissionais.
-   **Sub-Módulo 6.1: Polimento e "Game Feel"**
    -   **6.1.1:** Câmera Shake, Hit-Stop e Partículas de impacto.
    -   **6.1.2:** Uso avançado de `Tween` para animações de UI e movimento.
    -   **6.1.3:** Design de Som Reativo.
    -   **6.1.4:** Introdução a Shaders 2D para efeitos visuais.
-   **Sub-Módulo 6.2: Multiplayer e Redes**
    -   **6.2.1:** Conceitos: Servidor vs Cliente, Autoridade, RPCs.
    -   **6.2.2:** A API de Multiplayer de Alto Nível do Godot.
    -   **6.2.3:** Usando o `MultiplayerSynchronizer` para sincronizar estados.
    -   **6.2.4:** Implementando um lobby de jogo simples.
-   **Sub-Módulo 6.3: IA com Machine Learning**
    -   **6.3.1:** Teoria: O que é Aprendizado por Reforço (RL)?
    -   **6.3.2:** Setup do Ambiente Python (PyTorch, Stable Baselines3).
    -   **6.3.3:** Criando a ponte de comunicação Godot <-> Python com WebSockets.
    -   **6.3.4:** Treinando um Agente: O loop de Observação, Ação e Recompensa.
    -   **6.3.5:** Exportando o modelo treinado para o formato ONNX.
    -   **6.3.6:** Inferência em Tempo Real no Godot com GDExtension.

---

## **Módulo 07: Produção, Publicação e Carreira**
-   **Objetivo:** Ensinar o lado de negócios e as práticas profissionais do desenvolvimento de jogos.
-   **Aulas:**
    -   **7.1: Controle de Versão com Git e GitHub:** O essencial para trabalhar em equipe e ter um backup seguro.
    -   **7.2: Montando seu Portfólio:** Como apresentar seus projetos de forma profissional.
    -   **7.3: Marketing para Desenvolvedores Independentes:** Noções básicas de como divulgar seu jogo.
    -   **7.4: Checklist de Publicação:** O que fazer antes de lançar.
    -   **7.5: Guia Passo a Passo: Publicando na Itch.io.**
    -   **7.6: Guia Passo a Passo: Publicando na Steam.**
    -   **7.7: Acessibilidade no Design de Jogos:** Tornando seus jogos acessíveis a mais pessoas.

---

## **Módulo 08: Ecossistema e Ferramentas Externas**
-   **Objetivo:** Fornecer guias e pipelines para ferramentas essenciais que complementam a Godot.
-   **Aulas:**
    -   **8.1: Pipeline de Arte 2D com Krita/Aseprite:** Da criação à importação.
    -   **8.2: Pipeline de Áudio com Audacity:** Editando e preparando efeitos sonoros e músicas.
    -   **8.3: Plugins Essenciais da Comunidade Godot:** Uma lista curada de ferramentas que aceleram o desenvolvimento.
    -   **8.4: Contribuindo para Projetos Open Source:** Como usar o Git e GitHub para contribuir com este curso e outros projetos.
    -   **8.5: Conclusão e Próximos Passos:** Onde ir a partir daqui.