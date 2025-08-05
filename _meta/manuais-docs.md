# Planejamento de Manuais Técnicos (Índice Detalhado)

Este documento serve como um índice e resumo para toda a documentação técnica de arquitetura do curso. Cada manual é um guia de implementação para um sistema modular e profissional que será ensinado passo a passo.

## Parte 1: Arquitetura Fundamental

-   **Manual Principal / Arquitetura Geral:**
    -   **Descrição:** O documento central que une todos os outros. Descreve a filosofia de design do curso, a estrutura de pastas, a composição das cenas principais (Jogador, Nível) e como os sistemas globais se interconectam.

-   **Manual de Sistemas Globais (Autoloads):**
    -   **Descrição:** Explica o papel dos Singletons em Godot. Detalha a implementação de gerenciadores essenciais como `SceneManager`, `AudioManager`, `SettingsManager`, `WorldStateManager` e `SaveManager`.

-   **Manual de Arquitetura de Dados (Resources):**
    -   **Descrição:** Detalha a espinha dorsal do projeto: a abordagem orientada a dados. Explica como criar e usar `Resource`s customizados como `CharacterStats.gd`, `ItemResource.gd` e `EnemyData.gd` para desacoplar dados da lógica.

-   **Manual da Máquina de Estados (FSM):**
    -   **Descrição:** Apresenta a arquitetura de uma Máquina de Estados Finitos reutilizável. Cobre a implementação do gerenciador `StateMachine.gd` e da classe base `State.gd`, que permite organizar o comportamento de entidades complexas.

## Parte 2: Sistemas do Jogador e Interação

-   **Manual do Sistema de Interação:**
    -   **Descrição:** Apresenta um sistema desacoplado para interação. Detalha a criação de um componente `Interactable.tscn` (`Area2D`) que pode ser adicionado a qualquer objeto (NPC, baú, porta) para emitir um sinal `interacted`.

-   **Manual do Sistema de Inventário:**
    -   **Descrição:** Cobre a criação de um sistema de inventário baseado em `Resource`. Detalha o `ItemResource.gd` para definir itens, o `InventoryManager.gd` (Autoload) para gerenciar os dados e a comunicação com a UI via sinais.

-   **Manual do Sistema de Equipamentos:**
    -   **Descrição:** Expande o sistema de inventário para permitir que itens modifiquem os stats do jogador. Explica como o `EquipmentManager.gd` gerencia os slots de equipamento e recalcula os atributos do jogador em tempo real.

-   **Manual do Sistema de Níveis e Experiência (XP):**
    -   **Descrição:** Detalha um sistema de progressão. O `ExperienceManager.gd` (Autoload) rastreia o XP do jogador e usa uma curva de crescimento exponencial para gerenciar a subida de nível.

## Parte 3: Sistemas de Combate e Inimigos

-   **Manual do Sistema de Combate (Unificado):**
    -   **Descrição:** Descreve uma arquitetura de combate flexível baseada na interação entre `Hitbox` e `Hurtbox` (`Area2D`). Detalha o uso de um `AttackData` para passar informações de dano, knockback e efeitos.

-   **Manual de IA Inimiga:**
    -   **Descrição:** Guia para criar inimigos modulares. Explica como uma cena `enemy_base.tscn`, controlada por uma FSM e configurada por um `EnemyData` resource, pode ser usada para criar uma vasta gama de comportamentos de IA.

-   **Manual de Feedback de Dano (Floating Text):**
    -   **Descrição:** Explica como criar um sistema de feedback visual para combate. Um `FloatingTextManager.gd` instancia uma cena de texto com uma animação `Tween` para mostrar números de dano na tela.

-   **Manual de Perigos Ambientais:**
    -   **Descrição:** Apresenta uma cena `Hazard.tscn` genérica (`Area2D`) que pode ser configurada para criar diferentes tipos de perigos (lava, espinhos, veneno) que aplicam dano em área.

## Parte 4: Sistemas de Conteúdo e Mundo

-   **Manual do Sistema de Loot:**
    -   **Descrição:** Apresenta um sistema de drop de itens ponderado e baseado em tabelas. Explica como `LootTable.gd` e `LootItem.gd` (Resources) são usados pelo `LootSystem.gd` para gerar drops de forma balanceada.

-   **Manual de Lojas e Moeda:**
    -   **Descrição:** Guia para criar uma economia no jogo. Cobre o `WalletManager.gd` para o dinheiro do jogador e o `ShopInventory.gd` (Resource) para definir o que cada vendedor oferece.

-   **Manual do Sistema de Diálogo:**
    -   **Descrição:** Apresenta um sistema de diálogo em árvore usando `Resource`. O `DialogueResource.gd` pode conter falas, escolhas e sinais de evento, sendo gerenciado pelo `DialogueManager.gd`.

-   **Manual de Eventos Globais e Flags (World State):**
    -   **Descrição:** Detalha o `WorldStateManager.gd`, o "cérebro" do jogo que memoriza as ações do jogador. Explica como o uso de flags globais permite a criação de um mundo dinâmico e reativo.

-   **Manual do Sistema de Save/Load:**
    -   **Descrição:** Descreve uma arquitetura de salvamento centralizada. O `SaveManager.gd` orquestra o processo, pedindo a cada sistema para fornecer seus dados (`get_save_data`) e restaurando-os (`load_save_data`).

## Parte 5: Sistemas de UI e Apresentação

-   **Manual de UI (Interface do Usuário):**
    -   **Descrição:** Cobre as melhores práticas para criar UIs responsivas e modulares em Godot, usando `Container`s, `Theme`s e uma abordagem reativa baseada em sinais para os menus principais, HUD, etc.

-   **Manual de Mapa e Minimapa:**
    -   **Descrição:** Detalha a implementação de um minimapa usando um `SubViewport` e uma segunda câmera, e discute abordagens para um mapa de tela cheia, incluindo "Fog of War".

-   **Manual de Cutscenes Simples (com AnimationPlayer):**
    -   **Descrição:** Ensina a usar o `AnimationPlayer` como uma ferramenta de direção para criar eventos de script e cutscenes, animando propriedades de nós e chamando funções com a "Call Method Track".

## Parte 6: Tópicos Avançados

-   **Manual de IA com Machine Learning (Integração ONNX):**
    -   **Descrição:** Discute a arquitetura avançada para usar modelos de ML treinados. Explica o fluxo de trabalho de treinar um agente em Python e realizar a inferência em Godot usando o formato ONNX e uma GDExtension.
