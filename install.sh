#!/bin/bash

# Script para instalar ou atualizar a personalidade "cafe-gemini" para o assistente Gemini.

# --- Configuracao ---
REPO_URL="https://github.com/Cafe-GameDev/Cafe-com-Godot.git"
PERSONALITY_NAME="cafe-gemini"
INSTALL_DIR="$HOME/.gemini/personalities/$PERSONALITY_NAME"

# --- Inicio do Script ---

# 1. Verificar se o Git esta instalado
if ! command -v git &> /dev/null; then
    echo "ERRO: Git nao encontrado. Por favor, instale o Git e tente novamente."
    exit 1
fi

# 2. Logica de Instalacao ou Atualizacao
if [ -d "$INSTALL_DIR/.git" ]; then
    echo "Personalidade '$PERSONALITY_NAME' ja instalada. Atualizando..."
    cd "$INSTALL_DIR" && git pull && cd - > /dev/null
    if [ $? -ne 0 ]; then
        echo "ERRO: Falha ao executar 'git pull'."
        exit 1
    fi
    echo "Atualizacao concluida com sucesso."
else
    echo "Instalando a personalidade '$PERSONALITY_NAME'…"
    mkdir -p "$INSTALL_DIR"
    git clone "$REPO_URL" "$INSTALL_DIR"
    if [ $? -ne 0 ]; then
        echo "ERRO: Falha ao clonar o repositorio."
        exit 1
    fi
    echo "Instalacao concluida com sucesso."
fi

# 3. Detectar o arquivo de configuracao do shell
SHELL_CONFIG_FILE=""
if [ -n "$ZSH_VERSION" ]; then
   SHELL_CONFIG_FILE="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
   SHELL_CONFIG_FILE="$HOME/.bashrc"
else
   # Fallback for other shells
   [ -f "$HOME/.profile" ] && SHELL_CONFIG_FILE="$HOME/.profile"
   [ -f "$HOME/.bash_profile" ] && SHELL_CONFIG_FILE="$HOME/.bash_profile"
fi

if [ -z "$SHELL_CONFIG_FILE" ]; then
    echo "AVISO: Nao foi possivel detectar seu arquivo de configuracao de shell."
    MANUAL_INSTALL_REQUIRED=true
fi

# 4. Adicionar o alias ao perfil
ALIAS_CMD="alias $PERSONALITY_NAME='gemini --include-directories \"$INSTALL_DIR\" --load-memory-from-include-directories'"
COMMENT="# Alias para o assistente Gemini especializado (Cafe-com-Godot)"

if [ "$MANUAL_INSTALL_REQUIRED" != true ]; then
    if ! grep -qF "$ALIAS_CMD" "$SHELL_CONFIG_FILE"; then
        echo "Adicionando o comando '$PERSONALITY_NAME' ao arquivo '$SHELL_CONFIG_FILE'…"
        echo -e "\n$COMMENT\n$ALIAS_CMD" >> "$SHELL_CONFIG_FILE"
    else
        echo "Comando '$PERSONALITY_NAME' ja configurado em '$SHELL_CONFIG_FILE'."
    fi
fi

# 5. Mensagem final
echo ""
echo "----------------------------------------------------------------"
if [ "$MANUAL_INSTALL_REQUIRED" = true ]; then
    echo "AVISO: Acao manual necessaria!"
    echo "Adicione a seguinte linha ao seu arquivo de configuracao do shell:"
    echo ""
    echo "$COMMENT"
    echo "$ALIAS_CMD"
else
    echo "Tudo pronto! Para aplicar as mudancas, reinicie seu terminal"
    echo "ou execute o comando: source $SHELL_CONFIG_FILE"
fi
echo "Apos isso, o comando '$PERSONALITY_NAME' estara disponivel em qualquer diretorio."
echo "Para atualizar no futuro, basta executar este script novamente."
echo "----------------------------------------------------------------"