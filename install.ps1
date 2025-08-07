# Script para instalar ou atualizar a personalidade "cafe-gemini" e suas dependencias.

# --- Configuracao ---
$RepoUrl = "https://github.com/Cafe-GameDev/Cafe-com-Godot.git"
$PersonalityName = "cafe-gemini"
$InstallDir = "$HOME\.gemini\personalities\$PersonalityName"
$UpdateCmdName = "cafe-gemini-update"

# --- Inicio do Script ---
Write-Host "----------------------------------------------------------------"
Write-Host "Iniciando o instalador do assistente 'cafe-gemini'..."
Write-Host "----------------------------------------------------------------"

# 1. Verificar se o npm (Node.js) esta instalado
if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
    Write-Host "ERRO: npm (Node.js) nao encontrado."
    Write-Host "Por favor, instale o Node.js (https://nodejs.org/) e tente novamente."
    exit 1
}

# 2. Instalar/Atualizar o Gemini CLI globalmente
Write-Host "-> Passo 1/4: Verificando e instalando o Gemini CLI..."
npm install -g @google/gemini-cli
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERRO: Falha ao instalar '@google/gemini-cli'. Verifique sua instalacao do npm."
    exit 1
}
Write-Host "Gemini CLI instalado com sucesso."

# 3. Logica de Instalacao ou Atualizacao do Repositorio
Write-Host "-> Passo 2/4: Verificando o repositorio da personalidade..."
if (Test-Path (Join-Path $InstallDir ".git")) {
    Write-Host "Repositorio ja existe. Atualizando..."
    try {
        Set-Location $InstallDir
        git pull
        Set-Location $PSScriptRoot
        Write-Host "Repositorio atualizado com sucesso."
    } catch {
        Write-Host "ERRO: Falha ao executar 'git pull'."
        exit 1
    }
} else {
    Write-Host "Clonando o repositorio da personalidade..."
    try {
        New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null
        git clone $RepoUrl $InstallDir
        Write-Host "Repositorio clonado com sucesso."
    } catch {
        Write-Host "ERRO: Falha ao clonar o repositorio."
        exit 1
    }
}

# 4. Garantir que o arquivo de perfil do PowerShell exista e adicionar os comandos
Write-Host "-> Passo 3/4: Configurando os comandos..."
if (-not (Test-Path $PROFILE)) {
    New-Item -Path $PROFILE -ItemType File -Force | Out-Null
    Write-Host "Arquivo de perfil do PowerShell criado em '$PROFILE'."
}

$Comment = "# Comandos para o assistente Gemini especializado (Cafe-com-Godot)"
$MainFunction = @"
function $PersonalityName {
    gemini --include-directories "$InstallDir" --load-memory-from-include-directories `$args
}
"@
$UpdateFunction = @"
function $UpdateCmdName {
    powershell.exe -ExecutionPolicy Bypass -File "$InstallDir\install.ps1"
}
"@

$CurrentProfileContent = Get-Content $PROFILE -Raw -ErrorAction SilentlyContinue

# Garante que o comentario exista
if (-not ($CurrentProfileContent -match $Comment)) {
    Add-Content -Path $PROFILE -Value "`n$Comment"
}

# Adiciona ou atualiza a funcao principal
if (-not ($CurrentProfileContent -match "function\s+$PersonalityName")) {
    Add-Content -Path $PROFILE -Value $MainFunction
    Write-Host "Comando '$PersonalityName' adicionado."
} else {
    Write-Host "Comando '$PersonalityName' ja configurado."
}

# Adiciona ou atualiza a funcao de update
if (-not ($CurrentProfileContent -match "function\s+$UpdateCmdName")) {
    Add-Content -Path $PROFILE -Value $UpdateFunction
    Write-Host "Comando '$UpdateCmdName' adicionado."
} else {
    Write-Host "Comando '$UpdateCmdName' ja configurado."
}

# 5. Mensagem final
Write-Host "-> Passo 4/4: Finalizacao."
Write-Host ""
Write-Host "----------------------------------------------------------------"
Write-Host "🎉 Instalacao/Atualizacao concluida com sucesso! 🎉"
Write-Host ""
Write-Host "Para aplicar as mudancas, reinicie seu terminal ou execute:"
Write-Host ". `$PROFILE"
Write-Host ""
Write-Host "Comandos disponiveis:"
Write-Host "  $PersonalityName        - Inicia o assistente especializado."
Write-Host "  $UpdateCmdName - Atualiza o assistente para a versao mais recente."
Write-Host "----------------------------------------------------------------"