#!/bin/bash
# Script para activar ventiladores al estandar y limitar temperatura de CPU a 95°C

# Ejecutar comandos con sudo (asume que el usuario tiene permisos sudo sin contraseña o pedirá contraseña)
sudo OMENCORE/omencore-cli fan -p auto
sudo ./ryzenadj --tctl-temp=95

# Mensaje opcional de confirmación
echo "✅ Modo de ventiladores: Quiet"
echo "✅ Límite de temperatura de CPU: 95°C"