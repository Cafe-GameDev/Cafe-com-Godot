# Curso de Godot 2D: Do Zero ao Profissional (Open Source)

Bem-vindo ao repositório oficial do curso **"Godot 2D: Do Zero ao Profissional"**! Este projeto é uma iniciativa **Open Source** e um curso completo, baseado em texto, que te guiará desde os primeiros passos na Godot Engine até a criação de jogos complexos com arquitetura profissional.

## 📚 O Curso em Formato de Repositório

Diferente de um curso em vídeo, este repositório **é o próprio curso**. Todo o material didático está organizado em formato de texto (Markdown), permitindo que você aprenda no seu próprio ritmo, como se estivesse lendo um livro interativo.

**Objetivos Principais:**

- Dominar a Godot Engine para desenvolvimento 2D.
- Aprender a projetar e implementar arquiteturas de jogo robustas e escaláveis.
- Desenvolver projetos práticos e completos, passo a passo.
- Adquirir uma mentalidade de engenharia de software aplicada a jogos.

## 🚀 Café Gemini: Seu Copiloto Especialista em Godot

Uma característica única deste projeto é o **Café Gemini**, um assistente de IA que transforma o Gemini em um copiloto especializado para a Godot Engine.

Embora tenha sido treinado com todo o conteúdo e arquitetura deste curso, o Café Gemini é uma ferramenta poderosa para **qualquer desenvolvedor Godot**. Ele tem acesso direto ao seu ambiente de desenvolvimento (código-fonte, cenas, nós, etc.), permitindo que você tire dúvidas, gere código e refatore sistemas de forma contextual e inteligente.

Ele não é um assistente genérico; é o seu especialista particular em Godot.

### Instalação (Método Oficial)

A instalação é feita através do NPM (Node Package Manager).

> **Pré-requisito:** Você precisa ter o [Node.js](https://nodejs.org/downloads/) (que inclui o `npm`) instalado no seu sistema.

Com o Node.js pronto, abra seu terminal e execute o comando:

```bash
npm install -g cafe-gemini
```

**Após a instalação, reinicie seu terminal** para que os novos comandos sejam reconhecidos.

### Comandos Disponíveis

Após a instalação, os seguintes comandos estarão disponíveis em qualquer diretório do seu sistema:

- `cafe-gemini`
  - Inicia uma conversa com o assistente especializado.
- `cafe-gemini-update`
  - Atualiza o assistente para a versão mais recente, baixando os manuais e templates mais atuais.

## 🗺️ Trilha de Aprendizagem: Como Navegar no Curso

A estrutura de pastas foi desenhada para ser uma trilha de aprendizagem clara e sequencial. **Comece pelo módulo `00` e siga a ordem numérica.**

## ⚙️ Configuração do Ambiente (VS Code)

Para a melhor experiência de desenvolvimento, este repositório já vem pré-configurado para o Visual Studio Code.

Ao abrir o projeto pela primeira vez, siga estes passos:

1.  **Instale as Extensões Recomendadas:** O VS Code irá notificá-lo sobre uma lista de extensões recomendadas para este workspace. Clique em **"Instalar"** para configurar automaticamente o ambiente com ferramentas para Godot (GDScript), Markdown e mais.
2.  **Configure o Caminho do Godot:** A integração com o motor Godot requer uma configuração manual:
    - Abra o arquivo: `.vscode/settings.json`.
    - Encontre a linha que diz `"godot_tools.editor_path"`.
    - Substitua o valor `"INSIRA_AQUI_O_CAMINHO_PARA_O_SEU_EXECUTAVEL_DO_GODOT"` pelo caminho absoluto para o executável do Godot no seu computador.

Feito isso, seu ambiente estará pronto!

## 🧪 Filosofia de Testes com GUT (Godot Unit Test)

A qualidade e a estabilidade são pilares fundamentais deste projeto. Para garantir um desenvolvimento robusto e sustentável, adotamos o **GUT (Godot Unit Test)** como o framework de testes automatizados padrão.

**Por que testar?**

- **Confiança para Refatorar:** Altere e melhore o código com a segurança de que os testes verificarão se as funcionalidades existentes continuam operando como esperado.
- **Detecção Rápida de Bugs:** Encontre problemas no momento em que são introduzidos, economizando horas de depuração futura.
- **Documentação Viva:** Os testes servem como um exemplo prático de como o código deve ser utilizado.

**Diretriz Oficial:**

> Toda nova funcionalidade, sistema ou correção de bug crítico deve, sempre que possível, ser acompanhado por testes unitários correspondentes no GUT.

Esta prática é essencial para a saúde do projeto a longo prazo e um requisito para contribuições que envolvam lógica de jogo.

## 🤝 Contribuições

Este é um projeto Open Source! Contribuições são muito bem-vindas. Se você encontrar erros, tiver sugestões de melhoria, ou quiser adicionar conteúdo, por favor:

1.  Faça um `fork` do repositório.
2.  Crie uma `branch` para sua feature (`git checkout -b feature/minha-contribuicao`).
3.  Faça suas alterações e `commit` (`git commit -m 'feat: adiciona nova funcionalidade'`).
4.  Envie para sua `branch` (`git push origin feature/minha-contribuicao`).
5.  Abra um `Pull Request` detalhando suas mudanças.

## 📄 Licença

Este projeto está licenciado sob a Licença APACHE 2.0. Veja o arquivo `LICENSE` para mais detalhes.

# Café Gemini CLI

Bem-vindo ao Café Gemini, seu **parceiro de desenvolvimento colaborativo** para o ecossistema Godot.

O Café Gemini transforma o Gemini em um copiloto que tem acesso direto e total ao seu ambiente de desenvolvimento. Em vez de você precisar copiar e colar código para obter ajuda, o Café Gemini já tem acesso a todo o seu projeto, incluindo scripts, cenas e a arquitetura geral do seu jogo.

Ele é, em essência, o Gemini para desenvolvedores Godot, e o melhor de tudo: **roda diretamente no seu celular via Termux!**

## Comandos da Ferramenta

O Café Gemini vem com um conjunto de comandos para agilizar seu desenvolvimento:

- `cafe-gemini` ou `repo-cafe`:

  - **Função:** Inicia a sessão de chat com o assistente. `repo-cafe` é um alias para `cafe-gemini`.
  - **Uso:** `cafe-gemini`

- `cafe-new <nome-do-projeto>`:

  - **Função:** Cria um novo projeto Godot a partir do template oficial do "Repo Café", já com estrutura de pastas e o framework de testes (GUT) configurado.
  - **Uso:** `cafe-new meu-novo-jogo`

- `cafe-gemini-update`:

  - **Função:** Atualiza a ferramenta `cafe-gemini` para a versão mais recente. O processo de atualização também garante que sua cópia local do Repo-Café esteja sincronizada com a versão da ferramenta.
  - **Uso:** `cafe-gemini-update`

- `repo-update`:
  - **Função:** Atualiza especificamente o repositório de conhecimento (Repo-Café), baixando as últimas atualizações dos manuais. É ideal para obter o conteúdo mais recente, que pode ser atualizado com mais frequência do que a ferramenta em si.
  - **Uso:** `repo-update`

## Como Funciona?

O Café Gemini é um wrapper inteligente para o `gemini-cli` do Google. Ele utiliza o repositório [Repo Café](https://github.com/Cafe-GameDev/Repo-Cafe) — um curso completo de Godot em formato de texto — como uma base de conhecimento fixa. Isso garante que, não importa em qual projeto você esteja trabalhando, o assistente sempre terá o contexto de boas práticas e da arquitetura Godot para lhe auxiliar.

## Instalação

Para instalar o Café Gemini, você precisa ter o [Node.js](https://nodejs.org/) (que inclui o NPM) instalado em seu sistema.

Com o Node.js pronto, abra seu terminal e execute o seguinte comando:

```bash
npm install -g cafe-gemini
```

## Como Usar

Após a instalação, simplesmente abra um novo terminal e execute:

```bash
cafe-gemini
```

## Recursos Adicionais

- **Análise de Mídia**: O Gemini pode "ver" e analisar arquivos de imagem e áudio do seu projeto.
- **Geração de Imagens**: É possível configurar um _Model-Centric Pipeline (MCP)_ para permitir que o Café Gemini gere imagens diretamente pela linha de comando. As instruções estão disponíveis no [repositório oficial do Gemini CLI](https://github.com/google/gemini-cli).

## Modo de Operação de Conteúdo (NSFW)

Para garantir total liberdade criativa em projetos destinados a um público adulto, o Café Gemini possui um modo de operação explícito (NSFW).

- **Modo Padrão (SFW):** Por padrão, o assistente opera com as políticas de segurança de conteúdo do Google, evitando temas sensíveis.
- **Modo Explícito (NSFW):** Se um arquivo chamado `NSFW` (sem extensão) for detectado na raiz do seu projeto, as restrições de conteúdo são suspensas. Isso permite que o assistente colabore na criação de diálogos com linguagem explícita, descrições de violência e outros temas maduros, respeitando a visão criativa do seu projeto.

Se você solicitar um conteúdo que seria bloqueado, o próprio assistente oferecerá a criação do arquivo `NSFW` para ativar o modo explícito.
