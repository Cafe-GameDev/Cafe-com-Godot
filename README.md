# Curso de Godot 2D: Do Zero ao Profissional (Open Source)

Bem-vindo ao repositório oficial do curso **"Godot 2D: Do Zero ao Profissional"**! Este projeto é uma iniciativa **Open Source** e um curso completo, baseado em texto, que te guiará desde os primeiros passos na Godot Engine até a criação de jogos complexos com arquitetura profissional.

## 📚 O Curso em Formato de Repositório

Diferente de um curso em vídeo, este repositório **é o próprio curso**. Todo o material didático está organizado em formato de texto (Markdown), permitindo que você aprenda no seu próprio ritmo, como se estivesse lendo um livro interativo.

**Objetivos Principais:**
*   Dominar a Godot Engine para desenvolvimento 2D.
*   Aprender a projetar e implementar arquiteturas de jogo robustas e escaláveis.
*   Desenvolver projetos práticos e completos, passo a passo.
*   Adquirir uma mentalidade de engenharia de software aplicada a jogos.

## 🚀 Assistente `cafe-gemini`: Seu Especialista em Godot

Uma característica única deste curso é sua integração com um assistente de IA especializado. Ao instalar o `cafe-gemini`, você ganha um parceiro de desenvolvimento que já conhece toda a arquitetura e as boas práticas ensinadas aqui. Ele não é um assistente genérico; ele é um especialista neste curso.

### Instalação (Comando Único)

A instalação é feita com um único comando no seu terminal. Ele cuidará de tudo: instalará o Gemini CLI (via Node.js), baixará os manuais do curso e configurará os comandos para você.

> **Pré-requisito:** Você precisa ter o [Node.js](https://nodejs.org/downloads/) (que inclui o `npm`) instalado no seu sistema.

Copie e execute o comando correspondente ao seu sistema operacional:

*   **No Windows (abra o PowerShell como Administrador):**
    ```powershell
    iwr -useb https://raw.githubusercontent.com/Cafe-GameDev/Cafe-com-Godot/main/install.ps1 | iex
    ```

*   **No Linux ou macOS:**
    ```bash
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Cafe-GameDev/Cafe-com-Godot/main/install.sh)"
    ```

Após a execução, **reinicie seu terminal** para que os novos comandos sejam reconhecidos.

### Comandos Disponíveis

Após a instalação, os seguintes comandos estarão disponíveis em qualquer diretório do seu sistema:

*   `cafe-gemini`
    *   Inicia uma conversa com o assistente especializado. Use-o para tirar dúvidas, criar código, refatorar sistemas e tudo mais, sempre seguindo os padrões do curso.

*   `cafe-gemini-update`
    *   Atualiza o assistente para a versão mais recente. Ele baixará os manuais e templates mais atuais, garantindo que o `cafe-gemini` tenha sempre o conhecimento mais recente do curso. Execute este comando periodicamente.

## 🗺️ Trilha de Aprendizagem: Como Navegar no Curso

A estrutura de pastas foi desenhada para ser uma trilha de aprendizagem clara e sequencial. **Comece pelo módulo `00` e siga a ordem numérica.**

## ⚙️ Configuração do Ambiente (VS Code)

Para a melhor experiência de desenvolvimento, este repositório já vem pré-configurado para o Visual Studio Code.

Ao abrir o projeto pela primeira vez, siga estes passos:

1.  **Instale as Extensões Recomendadas:** O VS Code irá notificá-lo sobre uma lista de extensões recomendadas para este workspace. Clique em **"Instalar"** para configurar automaticamente o ambiente com ferramentas para Godot (GDScript), Markdown e mais.
2.  **Configure o Caminho do Godot:** A integração com o motor Godot requer uma configuração manual:
    *   Abra o arquivo: `.vscode/settings.json`.
    *   Encontre a linha que diz `"godot_tools.editor_path"`.
    *   Substitua o valor `"INSIRA_AQUI_O_CAMINHO_PARA_O_SEU_EXECUTAVEL_DO_GODOT"` pelo caminho absoluto para o executável do Godot no seu computador.

Feito isso, seu ambiente estará pronto!

## 🧪 Filosofia de Testes com GUT (Godot Unit Test)

A qualidade e a estabilidade são pilares fundamentais deste projeto. Para garantir um desenvolvimento robusto e sustentável, adotamos o **GUT (Godot Unit Test)** como o framework de testes automatizados padrão.

**Por que testar?**
*   **Confiança para Refatorar:** Altere e melhore o código com a segurança de que os testes verificarão se as funcionalidades existentes continuam operando como esperado.
*   **Detecção Rápida de Bugs:** Encontre problemas no momento em que são introduzidos, economizando horas de depuração futura.
*   **Documentação Viva:** Os testes servem como um exemplo prático de como o código deve ser utilizado.

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
