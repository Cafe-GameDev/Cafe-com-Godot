extends Node

# SaveSystem.gd
#
# Este Autoload é o sistema centralizado para salvar e carregar dados do jogo.
# Ele opera de forma totalmente desacoplada, ouvindo eventos do GlobalEvents
# e emitindo eventos de volta após a conclusão de suas tarefas.
#
# Ele não conhece nenhum outro sistema; apenas sabe como lidar com dicionários
# de dados e arquivos no disco.

const SAVE_PATH = "user://settings.json"

func _ready():
	# Conecta aos eventos globais que este sistema precisa ouvir.
	GlobalEvents.save_settings_data.connect(_on_save_settings_data)
	GlobalEvents.request_load_settings.connect(_on_request_load_settings)


# --- Private Functions ---

## Salva os dados recebidos em um arquivo JSON.
func _on_save_settings_data(data: Dictionary):
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	
	if FileAccess.get_open_error() != OK:
		printerr("SaveSystem: Erro ao abrir o arquivo para escrita.")
		GlobalEvents.emit_signal("settings_save_error", "file_open_error")
		return
		
	# Converte o dicionário para uma string JSON.
	var json_string = JSON.stringify(data, "\t")
	
	# Escreve a string no arquivo.
	file.store_string(json_string)
	file.close()
	
	print("SaveSystem: Configurações salvas com sucesso.")
	GlobalEvents.emit_signal("settings_saved_successfully")


## Carrega os dados de um arquivo JSON e os emite para o EventBus.
func _on_request_load_settings():
	if not FileAccess.file_exists(SAVE_PATH):
		printerr("SaveSystem: Arquivo de save não encontrado.")
		return # Não emite erro, pode ser a primeira vez que o jogo é aberto.

	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	
	if FileAccess.get_open_error() != OK:
		printerr("SaveSystem: Erro ao abrir o arquivo para leitura.")
		return

	# Lê o conteúdo do arquivo.
	var content = file.get_as_text()
	file.close()
	
	# Converte a string JSON de volta para um Variant (esperamos um Dicionário).
	var json = JSON.new()
	var error = json.parse(content)
	if error != OK:
		printerr("SaveSystem: Erro ao parsear o JSON do arquivo de save.")
		return

	var data = json.get_data()
	if typeof(data) != TYPE_DICTIONARY:
		printerr("SaveSystem: O dado carregado não é um dicionário.")
		return
		
	print("SaveSystem: Configurações carregadas com sucesso.")
	GlobalEvents.emit_signal("settings_loaded", data)
