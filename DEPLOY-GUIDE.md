# 🚀 GUÍA COMPLETA PARA SUBIR A RENDER

## 📋 PASO 1: PREPARAR LOS ARCHIVOS

Antes de subir, necesitas renombrar estos archivos:

1. `index_new.html` → `index.html`
2. `style_new.css` → `style.css`

**IMPORTANTE:** También actualiza la referencia en el HTML:
- Cambia `<link rel="stylesheet" href="style_new.css">` 
- Por: `<link rel="stylesheet" href="style.css">`

---

## 🌐 PASO 2: CREAR CUENTA EN RENDER

1. Ve a: https://render.com
2. Haz click en "Get Started" o "Sign Up"
3. Regístrate con tu email o GitHub

---

## 📦 PASO 3: SUBIR A GITHUB (RECOMENDADO)

### Opción A: Usando GitHub Desktop (MÁS FÁCIL)

1. Descarga GitHub Desktop: https://desktop.github.com/
2. Instala y haz login con tu cuenta de GitHub
3. Click en "Add" → "Add Existing Repository"
4. Selecciona la carpeta: `D:\Proyectos\Paginas Webs\Pagina de amor`
5. Click en "Publish repository"
6. ✅ Marca "Keep this code private" si quieres que sea privado
7. Click en "Publish Repository"

### Opción B: Usando Git en la terminal

```bash
cd "D:\Proyectos\Paginas Webs\Pagina de amor"
git init
git add .
git commit -m "Initial commit - Love story website"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/love-story.git
git push -u origin main
```

---

## 🎯 PASO 4: CONECTAR RENDER CON GITHUB

1. En Render.com, haz click en "New +"
2. Selecciona "Static Site"
3. Click en "Connect to GitHub"
4. Autoriza Render a acceder a GitHub
5. Busca tu repositorio "love-story" (o el nombre que le pusiste)
6. Click en "Connect"

---

## ⚙️ PASO 5: CONFIGURAR EL DEPLOY

En la página de configuración:

**Build & Deploy:**
- **Name:** `love-story-bea` (o el nombre que quieras)
- **Branch:** `main`
- **Root Directory:** (dejar vacío)
- **Build Command:** (dejar vacío o poner `npm install`)
- **Publish Directory:** `.` (punto solo)

**Advanced:**
- **Auto-Deploy:** Yes (recomendado)

Click en "Create Static Site"

---

## ✅ PASO 6: ESPERAR EL DEPLOY

1. Render empezará a construir tu sitio (tarda 1-2 minutos)
2. Verás un log con el progreso
3. Cuando termine dirá "Live" con un ✅ verde
4. Tendrás una URL como: `https://love-story-bea.onrender.com`

---

## 🎉 PASO 7: ¡LISTO!

Tu página estará en vivo en la URL que te dio Render.

**URL ejemplo:** `https://love-story-bea.onrender.com`

---

## 🔧 ALTERNATIVA: SUBIR SIN GITHUB (Render Static Site)

Si NO quieres usar GitHub:

1. Ve a Render.com
2. Click en "New +" → "Static Site"
3. Selecciona "Deploy from a Git repository"
4. Si no tienes repositorio, puedes usar otras opciones como:
   - **Netlify Drop** (más fácil - solo arrastrar archivos)
   - **Vercel** (similar a Render)
   - **GitHub Pages** (gratis y fácil)

---

## 🌟 OPCIÓN MÁS FÁCIL: NETLIFY DROP

1. Ve a: https://app.netlify.com/drop
2. Arrastra toda la carpeta del proyecto
3. ¡Listo! Te da una URL inmediatamente
4. Gratis y súper rápido

---

## 📝 CHECKLIST ANTES DE SUBIR

- [ ] Renombrar `index_new.html` → `index.html`
- [ ] Renombrar `style_new.css` → `style.css`
- [ ] Actualizar la referencia del CSS en el HTML
- [ ] Verificar que todas las imágenes estén en la carpeta `Imagenes/`
- [ ] Probar localmente que todo funcione
- [ ] Subir a GitHub o servicio de hosting
- [ ] Configurar el deploy en Render/Netlify
- [ ] Probar la URL en vivo

---

## 🆘 SI TIENES PROBLEMAS

**Problema:** Las imágenes no se ven
**Solución:** Verifica que la carpeta `Imagenes/` esté en el repositorio

**Problema:** El CSS no se aplica
**Solución:** Verifica que el nombre del archivo CSS en el HTML sea correcto

**Problema:** El contador no funciona
**Solución:** El contador usa localStorage, funciona automáticamente

---

## 💡 CONSEJOS

1. **Netlify Drop** es la forma MÁS RÁPIDA (sin Git ni nada)
2. **GitHub + Render** es mejor para proyectos que actualizarás seguido
3. La página será GRATIS en Render/Netlify
4. El contador funcionará perfectamente en el servidor

---

## 📧 COMPARTIR LA PÁGINA

Una vez publicada, solo envía la URL a Bea:
`https://tu-sitio.onrender.com`

¡Y listo! 💕

---

**¿Prefieres que te ayude con algún método específico?** 
- Método más rápido: Netlify Drop (5 minutos)
- Método más profesional: GitHub + Render (15 minutos)
- Método más simple: Vercel (10 minutos)