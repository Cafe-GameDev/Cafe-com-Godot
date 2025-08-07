# Script para instalar ou atualizar a personalidade "cafe-gemini" para o assistente Gemini.

# --- Configuracao ---
$RepoUrl = "https://github.com/Cafe-GameDev/Cafe-com-Godot.git"
$PersonalityName = "cafe-gemini"
$InstallDir = "$HOME\.gemini\personalities\$PersonalityName"

# --- Inicio do Script ---

# 1. Verificar se o Git esta instalado
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "ERRO: Git nao encontrado. Por favor, instale o Git e adicione-o ao seu PATH."
    exit 1
}

# 2. Logica de Instalacao ou Atualizacao
if (Test-Path (Join-Path $InstallDir ".git")) {
    Write-Host "Personalidade '$PersonalityName' ja instalada. Atualizando..."
    try {
        Set-Location $InstallDir
        git pull
        Write-Host "Atualizacao concluida com sucesso."
        Set-Location $PSScriptRoot
    } catch {
        Write-Host "ERRO: Falha ao executar 'git pull'. Verifique sua conexao com a internet e o estado do repositorio."
        exit 1
    }
} else {
    Write-Host "Instalando a personalidade '$PersonalityName'..."
    try {
        if (-not (Test-Path $InstallDir)) {
            New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null
        }
        git clone $RepoUrl $InstallDir
        Write-Host "Instalacao concluida com sucesso."
    } catch {
        Write-Host "ERRO: Falha ao clonar o repositorio."
        exit 1
    }
}

# 3. Garantir que o arquivo de perfil do PowerShell exista
if (-not (Test-Path $PROFILE)) {
    New-Item -Path $PROFILE -ItemType File -Force | Out-Null
    Write-Host "Arquivo de perfil do PowerShell criado em '$PROFILE'."
}

# 4. Adicionar a funcao ao perfil do PowerShell
# A funcao e mais robusta que um alias, pois lida corretamente com argumentos.
$FunctionDefinition = @"

# Funcao para o assistente Gemini especializado (Cafe-com-Godot)
function $PersonalityName {
    gemini --include-directories "$InstallDir" --load-memory-from-include-directories `$args
}
"@

$CurrentProfileContent = Get-Content $PROFILE -Raw -ErrorAction SilentlyContinue
if (-not ($CurrentProfileContent -match "function\s+$PersonalityName")) {
    Write-Host "Adicionando o comando '$PersonalityName' ao seu perfil do PowerShell..."
    Add-Content -Path $PROFILE -Value $FunctionDefinition
} else {
    Write-Host "Comando '$PersonalityName' ja configurado em seu perfil."
}

# 5. Mensagem final
Write-Host ""
Write-Host "----------------------------------------------------------------"
Write-Host "Tudo pronto! Para aplicar as mudancas, reinicie seu terminal"
Write-Host "ou execute o comando: . `$PROFILE"
Write-Host "Apos isso, o comando '$PersonalityName' estara disponivel em qualquer diretorio."
Write-Host "Para atualizar no futuro, basta executar este script novamente."
Write-Host "----------------------------------------------------------------"
