# 🏥 OmniHospital Dashboard

Dashboard operativo con actualización automática diaria vía GitHub Actions.

## 🌐 Ver Dashboard

👉 **https://ciclotronpet.github.io/omnihospital-dashboard/**

---

## ⚙️ Configuración (una sola vez)

### 1. Crear el repositorio en GitHub

- Ve a https://github.com/new
- Nombre del repo: `omnihospital-dashboard`
- Visibilidad: **Public** (requerido para GitHub Pages gratis)
- Crear repositorio

### 2. Subir estos archivos

```bash
git init
git add .
git commit -m "🚀 Initial dashboard setup"
git branch -M main
git remote add origin https://github.com/ciclotronpet/omnihospital-dashboard.git
git push -u origin main
```

### 3. Activar GitHub Pages

- Ve a tu repo → **Settings** → **Pages**
- Source: `Deploy from a branch`
- Branch: `gh-pages` → `/ (root)`
- Guardar

### 4. Configurar secrets para el email

Ve a **Settings** → **Secrets and variables** → **Actions** → **New repository secret**

Agregar estos dos secrets:

| Nombre | Valor |
|--------|-------|
| `GMAIL_USER` | Tu dirección Gmail (ej: tumail@gmail.com) |
| `GMAIL_APP_PASSWORD` | Contraseña de aplicación de Gmail* |

> **\*Obtener contraseña de aplicación Gmail:**
> 1. Ve a https://myaccount.google.com/security
> 2. Activa la verificación en 2 pasos
> 3. Ve a "Contraseñas de aplicación"
> 4. Genera una para "Correo" → "Otro (nombre personalizado)" → "OmniHospital Dashboard"
> 5. Copia los 16 caracteres generados

### 5. Probar manualmente

- Ve a la pestaña **Actions** en tu repositorio
- Clic en `Daily Dashboard Update & Notify`
- Clic en **Run workflow** → **Run workflow**
- Espera ~1 min y verifica el email en mleon@omnihospital.com.ec

---

## 🕒 Horario automático

El workflow corre todos los días a las **10:45 AM hora Ecuador (ECT)**.

---

## 📁 Estructura del proyecto

```
omnihospital-dashboard/
├── index.html                    # Dashboard principal
├── .github/
│   └── workflows/
│       └── daily-update.yml      # Automatización diaria
├── scripts/
│   └── update-data.sh            # Script de actualización (opcional)
└── README.md
```
