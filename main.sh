#!/bin/bash

# ===============================
# Cickly by Mr. Black Cat
# https://github.com/bc09880/cickly/
# Script de productividad al inicio de sesión
# ===============================
# - Abre automáticamente apps seleccionadas (Telegram, WhatsApp, etc.)
# - Verifica si cada app está instalada antes de ejecutarla
# ===============================

# Mostrar ASCII art azul
tput setaf 4
cat << "EOF"
 ██████╗██╗ ██████╗██╗  ██╗██╗  ██╗   ██╗    ██████╗     ██████╗ 
██╔════╝██║██╔════╝██║ ██╔╝██║  ╚██╗ ██╔╝    ╚════██╗   ██╔═████╗
██║     ██║██║     █████╔╝ ██║   ╚████╔╝      █████╔╝   ██║██╔██║
██║     ██║██║     ██╔═██╗ ██║    ╚██╔╝      ██╔═══╝    ████╔╝██║
╚██████╗██║╚██████╗██║  ██╗███████╗██║       ███████╗██╗╚██████╔╝
 ╚═════╝╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝       ╚══════╝╚═╝ ╚═════╝ 
EOF
tput sgr0

# Mostrar info adicional en blanco
cat << EOF
--------------------------------------------------
Cickly V2.0
Desarrollado por Mr. BlackCat
📬 Contacto: bc09880@pm.me
🐱 Repositorio: https://github.com/bc09880/Cickly
💡 Usa el enlace para reportar problemas o aportar sugerencias.
--------------------------------------------------
EOF

# Función para verificar si el comando base existe
comando_disponible() {
    comando_base=$(echo "$1" | awk '{print $1}')
    command -v "$comando_base" &>/dev/null
}

# Lista de apps: "comando|nombre"
apps=(
    "telegram-desktop|Telegram (Snap)"
    "Visita https://github.com/bc09880/cickly/edit/main/README.md para mas información"
)

echo "🚀 Iniciando aplicaciones de productividad..."

# Ejecutar cada aplicación si está disponible
for app in "${apps[@]}"; do
    IFS='|' read -r cmd name <<< "$app"
    
    if comando_disponible "$cmd"; then
        echo "Abriendo $name..."
        eval "$cmd" & sleep 2
    else
        echo "⚠️  $name no está instalada o el comando '$cmd' no está disponible."
        sleep 1
    fi
done

clear
echo "✅ Proceso terminado. Las aplicaciones disponibles fueron abiertas."
