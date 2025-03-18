#!/bin/bash

# Script de login AWS ao iniciar o sistema

# Configurações
PROFILE="default"
SESSION="backoffice-sso"
LOG_FILE="$HOME/aws_login.log"

# Função de login
login_aws() {
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    
    echo "[$timestamp] Iniciando login AWS..." | tee -a "$LOG_FILE"
    
    # Realiza login AWS
    aws sso login --sso-session "$SESSION" --profile "$PROFILE"
    aws configure export-credentials --profile "$PROFILE"
    
    # Verifica status do login
    if [ $? -eq 0 ]; then
        echo "[$timestamp] Login realizado com sucesso!" | tee -a "$LOG_FILE"
    else
        echo "[$timestamp] Falha no login. Verifique suas credenciais." | tee -a "$LOG_FILE"
        # Opcional: Envia notificação de erro
        notify-send "AWS Login" "Falha no login AWS" 
    fi
}

# Função principal
main() {
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$timestamp] Script de login AWS iniciado" | tee -a "$LOG_FILE"
    
    # Executa login
    login_aws
}

# Executa o script
main
