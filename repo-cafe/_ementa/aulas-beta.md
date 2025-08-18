# Ementa Completa do Curso: Café com Godot (Versão Beta)

Esta ementa detalha a estrutura completa do curso, organizada em quatro ciclos de aprendizagem progressivos. Cada ciclo segue um padrão de **Teórico -> Prático -> Desafio**, garantindo uma base sólida de conhecimento e aplicação prática.

---

### Módulo 00: Fundamentos de Engenharia de Software e Computação

**Objetivo:** Fornecer uma base teórica e prática abrangente dos pilares da computação, preparando o aluno com o conhecimento fundamental para desenvolver software complexo e de alta performance.

**Pilar 1: A Máquina e o Código (Aulas 01-05)**
*   **Aula 01: Arquitetura de Computadores (Hardware):** O papel da CPU (cores, cache), GPU (shaders, VRAM), RAM (velocidade, capacidade) e Armazenamento (SSD vs. HDD) no desempenho de um jogo.
*   **Aula 02: Sistemas Operacionais e Virtualização:** Como um jogo interage com o SO (Processos, Threads, Gerenciamento de Memória) e uma introdução a contêineres (Docker) para ambientes de servidor.
*   **Aula 03: Compiladores vs. Interpretadores:** Como o código vira execução. A jornada do C++ (compilado), Python (interpretado) e GDScript (híbrido).
*   **Aula 04: Gerenciamento de Memória: Stack vs. Heap:** A diferença fundamental, o uso de ponteiros/referências em C++ e as implicações para a performance.
*   **Aula 05: Matemática Essencial para Jogos:** Introdução a vetores, matrizes e transformações. A base para entender movimento, rotação e escala em 2D/3D.

**Pilar 2: Programação Universal e Paradigmas (Aulas 06-10)**
*   **Aula 06: Lógica, Variáveis e Controle de Fluxo:** Exemplos comparativos de `if/else`, `for`, `while` em GDScript, Python, C++/Rust e TypeScript.
*   **Aula 07: Funções, Escopo e Estruturas de Dados Fundamentais:** Implementação de funções, passagem de parâmetros e o uso de Arrays, Listas, Stacks e Queues nas 4 linguagens.
*   **Aula 08: Estruturas de Dados Avançadas:** Foco em Dicionários/Mapas, Hash Tables e introdução a Árvores.
*   **Aula 09: Paradigma da Programação Orientada a Objetos (POO):** Classes, Objetos, Encapsulamento e Abstração, com exemplos nas 4 linguagens (incluindo TypeScript).
*   **Aula 10: Tópicos Avançados de POO:** Herança, Polimorfismo e uma introdução a Padrões de Projeto (Design Patterns) como Singleton e Observador.

**Pilar 3: Construindo Sistemas Conectados (Aulas 11-15)**
*   **Aula 11: Redes de Computadores: A Base do Multiplayer:** Modelo Cliente-Servidor, Protocolos (TCP vs. UDP) e Latência.
*   **Aula 12: APIs e Comunicação Web:** O que é uma API? Introdução a REST, RPCs e o formato de dados JSON.
*   **Aula 13: Bancos de Dados e Persistência de Dados:** SQL vs. NoSQL. Modelando dados para contas de jogadores, inventários e leaderboards.
*   **Aula 14: Serialização de Dados:** Como salvar e carregar o estado do jogo. Formatos como JSON, XML e Binário.
*   **Aula 15: Segurança da Informação em Jogos:** Autoridade do Servidor, validação de input, prevenção de cheats comuns e proteção de dados do usuário.

**Pilar 4: Engenharia de Software e a Arquitetura do Curso (Aulas 16-20)**
*   **Aula 16: Algoritmos e Análise de Complexidade (Big O):** Entendendo como medir a eficiência de um código. Exemplos com algoritmos de busca e ordenação.
*   **Aula 17: Metodologias de Desenvolvimento de Software:** Introdução ao Agile, Scrum e ao ciclo de vida de um projeto.
*   **Aula 18: Testes de Software:** A importância dos testes unitários, de integração e de ponta a ponta.
*   **Aula 19: A Arquitetura Multi-linguagem do Curso:** O "porquê" de cada tecnologia: GDScript (jogo), Python (treino de IA), C++/Rust (execução de IA), TypeScript (servidor).
*   **Aula 20: Ferramentas Essenciais: Git e GitHub:** Dominando o controle de versão para gerenciar o projeto.

---

## Ciclo 1: Fundamentos da Arquitetura Desacoplada (Módulos 01-03)

**Objetivo:** Dominar a arquitetura "BodyLess" e os conceitos essenciais da Godot através da perspectiva Top-Down. O aluno aprenderá desde o início a construir sistemas modulares, escaláveis e de fácil manutenção.

### Módulo 01 (Teórico): Os Pilares da Arquitetura "BodyLess"
- **Aula 01:** Filosofia Godot e Desacoplamento: Composição sobre Herança.
- **Aula 02:** Nós, Cenas e a Estrutura de Árvore.
- **Aula 03:** GDScript e Dicionários: A base para estruturas de dados flexíveis.
- **Aula 04:** `Resource` como Contêiner de Dados: Criando a base do Design Orientado a Dados.
- **Aula 05:** Sinais e o Padrão Observer: A base da comunicação local.
- **Aula 06:** O EventBus (Autoload): Expandindo Sinais para uma comunicação global e desacoplada.
- **Aula 07:** Autoloads como Gerenciadores Ouvintes: Criando sistemas que reagem a eventos em vez de serem chamados diretamente.
- **Aula 08:** O Fluxo Completo: Input -> EventBus -> Manager -> Atualização de Estado -> UI Reativa.

### Módulo 02 (Prático): Construindo o Laboratório com a Arquitetura "BodyLess"
- **Aula 01:** Criando o Player: Movimento e emissão do evento `player_moved` com um dicionário de dados (velocidade, posição).
- **Aula 02:** Sistema de Câmera: A câmera ouve o evento `player_moved` para seguir o jogador.
- **Aula 03:** Inimigos Simples (Orientados a Dados): Um `Enemy.tscn` que usa um `EnemyData.tres` (Resource) para definir seu comportamento.
- **Aula 04:** Combate Desacoplado: Player emite `attack_action` no EventBus. `CombatManager` ouve, processa a lógica usando `WeaponData.tres` e emite `enemy_damaged`. O Inimigo ouve o evento e atualiza sua vida.
- **Aula 05:** Coletáveis e Eventos: A Moeda, ao ser coletada, emite `item_collected` no EventBus. `InventoryManager` ouve e atualiza o inventário, que por sua vez emite `inventory_changed`.
- **Aula 06:** HUD Reativa: A HUD ouve os eventos `inventory_changed` e `player_health_changed` para se atualizar, sem nunca ter uma referência direta ao Player ou ao Inventário.

### Módulo 03 (Desafio): Escolha seu Jogo Top-Down (Arquitetura Obrigatória)
O aluno aplica a arquitetura "BodyLess" em um dos seguintes projetos:
- **Opção A: Sobrevivência em Arena (*Vampire Survivors*-like):** Foco em sistemas de Spawner e Upgrades que reagem a eventos globais.
- **Opção B: Aventura e Puzzle (*Zelda*-like):** Foco em interações de objetos via EventBus (ex: `pressure_plate_activated`, `door_unlocked`).
- **Opção C: Ação em Nave Espacial (*Asteroids*-like):** Foco em física e comunicação de estado via eventos para power-ups e inimigos.

---

## Ciclo 2: Aprofundamento com Plataforma e Sistemas de Jogo Escaláveis (Módulos 04-06)

**Objetivo:** Aprofundar a aplicação da arquitetura "BodyLess" em um jogo de plataforma complexo, dominando sistemas de dados reutilizáveis e avançados.

### Módulo 04 (Teórico): Aprofundando a Arquitetura: Sistemas Escaláveis
- **Aula 01:** Arquitetura Avançada de Inventário: `ItemData` (Resource), slots e comunicação 100% via eventos.
- **Aula 02:** Tabelas de Loot (Resources): Desacoplando os drops dos inimigos.
- **Aula 03:** Máquinas de Estado (FSM) Desacopladas: Como os estados podem emitir e reagir a eventos do EventBus.
- **Aula 04:** Arquitetura de Sistemas de Diálogo e Missões baseada em eventos e Resources.
- **Aula 05:** Padrões para Lojas e Economia: Transações via eventos para máxima segurança e desacoplamento.
- **Aula 06:** `AnimationTree` e Sincronização com Eventos: Usando `Call Method Tracks` para emitir sinais no EventBus em pontos chave da animação.

### Módulo 05 (Prático): Jogo de Plataforma e Mineração (*Dome Keeper*-like)
- **Aula 01:** Controlador de Plataforma Robusto.
- **Aula 02:** Mineração com `TileMap` e Eventos: Emite `resource_mined` com um dicionário do recurso coletado.
- **Aula 03:** Sistema de Ondas de Inimigos: Um `WaveManager` que emite eventos como `wave_started` e `enemy_spawned`.
- **Aula 04:** Upgrades Orientados a Dados: A tela de upgrade lê `UpgradeData.tres` e, ao comprar, emite `upgrade_purchased` para os sistemas relevantes ouvirem.
- **Aula 05:** Defesa da Base: Torreta reage a eventos de `enemy_detected` e se comunica via EventBus.

### Módulo 06 (Desafio Cumulativo): Escolha seu Jogo (Arquitetura Obrigatória)
O aluno aplica a arquitetura "BodyLess" em cenários mais complexos:
- **Opção A: Plataforma de Precisão (*Celeste*-like):** Foco em estados de personagem complexos gerenciados por uma FSM desacoplada.
- **Opção B: Metroidvania Compacto:** Onde o `InventoryManager`, ao receber um novo item, emite um evento `ability_unlocked` que o Player ouve para ganhar novas habilidades.
- **Opção C: Simulador de Fazenda Top-Down:** Foco total em sistemas de gerenciamento (inventário, crafting, tempo) que operam exclusivamente via eventos.
- **Opção D: Roguelike de Exploração de Dungeon Top-Down:** Foco em geração procedural que emite eventos (`room_entered`) para que outros sistemas (IA, Spawners) possam reagir.
- **Opção E: Aventura Isométrica 2.5D:** Desafio avançado para adaptar a arquitetura a uma perspectiva isométrica.

---

## Ciclo 3: Ação Avançada e Multiplayer (Módulos 07-09)

**Objetivo:** Criar experiências de ação polidas e implementar multiplayer local e online com uma arquitetura de servidor profissional.

### Módulo 07 (Teórico): Combate Avançado e Arquitetura de Rede
- **Aula 01:** "Juice": Camera shake, partículas, trilhas e sound design.
- **Aula 02:** Padrões de Combate: Hitscan vs. Projétil.
- **Aula 03:** Habilidades de Personagem: Cooldowns e estados.
- **Aula 04:** Fundamentos do Multiplayer de Alto Nível da Godot: `MultiplayerSpawner` e `MultiplayerSynchronizer`.
- **Aula 05:** Arquitetura de Servidor Híbrido: Orquestrando lógica com TypeScript (Node.js) e performance com C++/Rust.
- **Aula 06:** Autoridade de Servidor e Sincronização de Estado.

### Módulo 08 (Prático): Jogo de Ação Multiplayer (*Overwatch 2D*-like)
- **Aula 01:** Base de Herói: Estruturando o personagem para habilidades.
- **Aula 02:** Definindo Heróis com `Resource`: Armas e habilidades únicas.
- **Aula 03:** Implementando Multiplayer Local (Split-screen).
- **Aula 04:** Construindo o Servidor de Jogo com TypeScript (Node.js) e implementando a comunicação com o cliente Godot.
- **Aula 05:** Sincronizando Ações e Estado de Jogo com o Servidor.

### Módulo 09 (Desafio): Escolha seu Jogo de Ação Online
- **Opção A: Ação Frenética Cooperativa (*Contra*-like Co-op):** Foco em level design, inimigos sincronizados e chefes de fase.
- **Opção B: Luta em Plataforma Online (*Smash Bros.*-like):** Foco em combate baseado em física, knockback e design de arenas.
- **Opção C: Ação Tática Competitiva Top-Down (*Hotline Miami*-like PvP):** Revisa a perspectiva Top-Down com foco em furtividade e combate de alto risco em um ambiente online.

---

## Ciclo 4: IA com Pipeline Híbrido e Serviços Online (Módulos 10-12)

**Objetivo:** Implementar um pipeline de IA profissional com Python e C++/Rust, e conectar o jogo a serviços de backend.

### Módulo 10 (Teórico): IA com Pipeline Híbrido e Serviços
- **Aula 01:** Pipeline de IA: Treinamento com Python, Execução com C++/Rust (GDExtension).
- **Aula 02:** Conceitos de Aprendizado por Reforço para o Treinamento do "Cérebro" em Python.
- **Aula 03:** Criando uma GDExtension em C++/Rust para ser o "Corpo" de alta performance da IA no jogo.
- **Aula 04:** Treinando um Agente: Ambiente, Recompensas e Ações.
- **Aula 05:** Serviços Online: Arquitetura para Save na Nuvem e Leaderboards.

### Módulo 11 (Prático): Criando Bots Inteligentes para o Jogo Multiplayer
- **Aula 01:** Configurando o ambiente de treinamento Python.
- **Aula 02:** Criando um "Cérebro" de IA para o bot do jogo *Overwatch 2D*.
- **Aula 03:** Treinando o 'Cérebro' do bot em Python.
- **Aula 04:** Portando o modelo treinado para a GDExtension em C++/Rust e integrando ao jogo para execução em tempo real.
- **Aula 05:** Implementando um Leaderboard online para o modo de jogo.

### Módulo 12 (Desafio): Escolha seu Jogo com IA e Multiplayer
- **Opção A: Jogo Cooperativo com um Diretor de IA (ML):** A IA (Python/C++) ajusta dinamicamente a dificuldade, spawns e eventos com base no desempenho dos jogadores.
- **Opção B: Jogo Competitivo com Bots Avançados:** Aprimorar os bots do Módulo 11 para que tenham diferentes "personalidades" ou usem habilidades de heróis específicos.
- **Opção C: Simulação com Agentes Inteligentes:** Criar um ecossistema (formigueiro, cidade) onde múltiplos agentes de IA (controlados pelo pipeline) interagem entre si e com o jogador para criar um comportamento emergente.