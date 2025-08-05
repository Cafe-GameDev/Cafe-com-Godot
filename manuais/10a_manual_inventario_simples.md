# Manual de Inventário Simples (Abordagem Inicial)

Este documento descreve uma primeira abordagem para um sistema de inventário, ideal para prototipagem rápida ou para jogos onde um sistema complexo não é necessário. Ele precede a arquitetura orientada a dados e foca na simplicidade.

## 1. A Filosofia: Rápido e Funcional

O objetivo aqui é ter um inventário funcionando com o mínimo de código e estrutura. Usaremos um simples `Array` para guardar os nomes (ou IDs) dos itens e uma UI básica para exibi-los.

## 2. A Arquitetura: Um Array no Player

Para esta abordagem, a maneira mais direta é colocar a lógica diretamente no script do jogador.

- **No `player.gd`:**
  ```gdscript
  # --- Inventário Simples ---
  signal inventory_changed

  const MAX_INVENTORY_SIZE = 16
  var inventory = []

  func add_item(item_name: String) -> bool:
      if inventory.size() < MAX_INVENTORY_SIZE:
          inventory.append(item_name)
          inventory_changed.emit()
          print("Itens no inventário: ", inventory)
          return true
      else:
          print("Inventário cheio!")
          return false

  func remove_item(item_name: String):
      if inventory.has(item_name):
          inventory.erase(item_name)
          inventory_changed.emit()
  ```

## 3. A Interface (UI) Simples

A UI para este sistema não precisa de slots complexos, apenas uma lista de texto.

- **Cena da UI (`SimpleInventoryUI.tscn`):**
  - **Nó Raiz:** `SimpleInventoryUI` (CanvasLayer)
    - `PanelContainer` (Fundo)
      - `MarginContainer`
        - `VBoxContainer` (Para listar os itens)
          - `TitleLabel` (Label com texto "Inventário")
          - `ItemListContainer` (VBoxContainer)
            - *Este container será populado com `Label`s via código.*

- **Script da UI (`simple_inventory_ui.gd`):**
  ```gdscript
  extends CanvasLayer

  @onready var item_list_container = $PanelContainer/MarginContainer/VBoxContainer/ItemListContainer
  var player # Referência ao nó do jogador

  func _ready():
      # É preciso obter a referência do jogador. Uma forma é via grupo.
      player = get_tree().get_first_node_in_group("Player")
      if player:
          player.inventory_changed.connect(update_display)
      
      update_display()

  # Limpa e recria a lista de itens na UI
  func update_display():
      # Limpa todos os labels antigos
      for child in item_list_container.get_children():
          child.queue_free()
          
      # Cria um novo label para cada item no inventário do jogador
      if player and not player.inventory.is_empty():
          for item_name in player.inventory:
              var label = Label.new()
              label.text = "- " + item_name
              item_list_container.add_child(label)

  # Exemplo de como mostrar/esconder o inventário
  func _input(event):
      if event.is_action_just_pressed("toggle_inventory"):
          visible = not visible
  ```

## 4. Integração

- **Coletando um Item:**
  - Crie uma cena para um item coletável (`collectable.tscn`) como uma `Area2D`.
  - Adicione uma variável ao script dele: `@export var item_name: String`.
  - Quando o jogador entrar na `Area2D`, o script do coletável chama `player.add_item(item_name)`. Se a função retornar `true`, o item se autodestrói (`queue_free()`).

Esta abordagem é uma excelente base para ensinar os conceitos de gerenciamento de dados e atualização de UI antes de introduzir a complexidade e o poder dos `Resource`s.
