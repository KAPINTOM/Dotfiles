#!/bin/bash
# Script para activar ventiladores al máximo y limitar temperatura de CPU a 95°C

# Ejecutar comandos con sudo (asume que el usuario tiene permisos sudo sin contraseña o pedirá contraseña)
sudo OMENCORE/omencore-cli fan -p max
sudo ./ryzenadj --tctl-temp=95

# Mensaje opcional de confirmación
echo "✅ Modo de ventiladores: MAX"
echo "✅ Límite de temperatura de CPU: 95°C"