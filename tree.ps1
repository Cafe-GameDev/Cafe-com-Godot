# Script para gerar a estrutura de diretórios do projeto em um arquivo Markdown (tree.md)
# Este script lê o arquivo .gitignore e gera uma árvore de diretórios que o respeita.

# Define o caminho do arquivo de saída
$outputFile = "tree.md"

# Cabeçalho para o arquivo tree.md
$header = "# Estrutura de Arquivos do Projeto`n`nEsta é a estrutura de arquivos e pastas do projeto, gerada automaticamente.`nA listagem abaixo exclui os arquivos e diretórios especificados no `.gitignore`.`n`n```"

# Inicia o conteúdo do arquivo com o cabeçalho
$fileContent = $header

# Função para ler os padrões do .gitignore
function Get-GitIgnorePatterns {
    $ignorePatterns = @()
    if (Test-Path ".gitignore") {
        $ignorePatterns = Get-Content ".gitignore" | Where-Object { $_ -and $_ -notmatch '^\s*#' }
    }
    return $ignorePatterns
}

# Função para verificar se um item deve ser ignorado
function Should-Ignore($item, $ignorePatterns) {
    foreach ($pattern in $ignorePatterns) {
        # Converte o padrão gitignore para regex
        $regexPattern = $pattern.Replace("\", "\\").Replace(".", "\.").Replace("*", ".*").Replace("?", ".")
        if ($item.Name -match $regexPattern) {
            return $true
        }
    }
    return $false
}

# Função recursiva para construir a árvore
function Build-Tree($directory, $indent, $ignorePatterns) {
    $output = ""
    $items = Get-ChildItem $directory | Sort-Object -Property @{Expression={!$_.PSIsContainer}}, Name
    $lastItem = $items[-1]

    foreach ($item in $items) {
        if (Should-Ignore $item $ignorePatterns) {
            continue
        }

        $isLast = ($item.Name -eq $lastItem.Name)
        $prefix = if ($isLast) { "└─── " } else { "├─── " }
        $output += "$indent$prefix$($item.Name)`n"

        if ($item.PSIsContainer) {
            $childIndent = $indent + (if ($isLast) { "    " } else { "│   " })
            $output += Build-Tree $item.FullName $childIndent $ignorePatterns
        }
    }
    return $output
}

# Obtém os padrões do .gitignore
$ignorePatterns = Get-GitIgnorePatterns

# Adiciona o nome do diretório raiz
$rootName = (Get-Location).Name
$fileContent += "`n$rootName/`n"

# Constrói a árvore a partir do diretório atual
$fileContent += Build-Tree (Get-Location) "" $ignorePatterns

# Adiciona o rodapé
$fileContent += "```"

# Escreve o conteúdo no arquivo de saída
Set-Content -Path $outputFile -Value $fileContent -Encoding UTF8

Write-Host "O arquivo tree.md foi gerado/atualizado com sucesso."