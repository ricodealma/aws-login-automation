# AWS SSO Auto Login Script

## 📝 Descrição

Script automatizado para realizar login na AWS SSO durante a inicialização do sistema, garantindo credenciais atualizadas a cada inicialização.

## 🛠 Pré-requisitos

### Dependências

- Git Bash
- AWS CLI
- Conta configurada no AWS SSO

### Instalação de Dependências

#### AWS CLI

```bash
# Opção 1: pip
pip install awscli

# Opção 2: Windows
winget install Amazon.AWSCLI
```

## 🔧 Configuração

### 1. Variáveis para Personalização

No script, ajuste estas variáveis:

```bash
PROFILE="default"         # Nome do perfil AWS
SESSION="backoffice-sso"  # Nome da sessão SSO
LOG_FILE="$HOME/aws_login.log"  # Localização do arquivo de log
```

### 2. Configuração AWS SSO

```bash
# Configurar SSO
aws configure sso
```

## 🚀 Instalação

### Passos para Configuração

1. Clonar Repositório

    ```bash
    git clone https://github.com/ricodealma/aws-login-automation.git
    cd aws-login-automation
    ```

2. Dar Permissão de Execução

    ```bash
    chmod +x aws-login.sh
    ```

### Configuração no Startup do Windows

1. Abrir pasta de inicialização

    - Tecla Windows + R
    - Digite: `shell:startup`

2. Criar Atalho

    - Novo Atalho
    - Destino:

      ```txt
      "C:\Program Files\Git\bin\bash.exe" -c "/caminho/completo/aws-login.sh"
      ```

## 💡 Funcionalidades

- Login automático no AWS SSO
- Log de execução
- Verificação de credenciais
- Notificação em caso de falha

## 🔍 Troubleshooting

### Possíveis Erros

- Verifique instalação do AWS CLI
- Confirme configuração do SSO
- Valide caminho do script

### Log de Execução

Consulte `$HOME/aws_login.log` para detalhes

## 🔒 Segurança

- Utilize perfis com mínimo privilégio
- Mantenha credenciais atualizadas
- Não compartilhe o script com informações sensíveis

## 📋 Requisitos do Sistema

- Windows 10/11
- Git Bash
- Python (para AWS CLI)

## 🤝 Contribuições

Pull requests são bem-vindos. Para mudanças importantes, abra um issue primeiro.
