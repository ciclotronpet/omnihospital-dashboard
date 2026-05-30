#!/bin/bash
# update-data.sh
# Optional script to pull data from external sources before dashboard update
# Customize this to connect to your data source (API, CSV, database export, etc.)

echo "🔄 Iniciando actualización de datos..."

# Example: Download CSV data
# curl -o data/metrics.csv "https://your-data-source.com/export.csv"

# Example: Call an API
# curl -o data/kpis.json "https://your-api.com/kpis/today"

echo "✅ Datos actualizados correctamente"
