<p align="center">
  <!-- Reemplaza este enlace por una imagen de presentación del script -->
  <img src="https://raw.githubusercontent.com/bc09880/Cickly/refs/heads/main/CicklyImage_2.0_00.png" alt="Cickly preview" width="600"/>
</p>

# 🐱 Cickly v2.0

**Cickly** es un script de productividad que ejecuta automáticamente las aplicaciones que elijas al iniciar sesión en Linux.
Una solución rápida y ligera para evitar tener que entrar en configuraciones del sistema o escribir múltiples comandos cada vez que inicias tu equipo.

> ⚡ Versión 2.0 completamente renovada.
> 🧪 Probado en distribuciones **Debian** y **Arch Linux**.

---

## ✨ Características

* 🔁 Ejecuta automáticamente programas al inicio de sesión.
* ✅ Verifica si cada aplicación está instalada antes de lanzarla.
* 🧩 Compatible con aplicaciones Web y locales.
* 🧠 Puedes personalizar fácilmente qué programas ejecutar editando el archivo `.sh`.
* 🎨 Muestra un encabezado en ASCII con contacto y versión.
* 📦 Fork actualizado del proyecto original [bc0988o/social-fast-open](https://github.com/bc0988o/social-fast-open), ahora desactualizado.

---

## 📦 Instalación

1. **Clona este repositorio**:

   ```bash
   git clone https://github.com/bc09880/Cickly.git
   cd Cickly
    ````

2. **Haz el script ejecutable**:

   ```bash
   chmod +x cickly.sh
   ````

3. **Edita las apps que quieres ejecutar al inicio**:
   Abre el archivo `cickly.sh` y edita la sección:

   ```bash
   apps=(
     "telegram-desktop|Telegram"
     "code|Visual Studio Code"
     "xdg-open 'https://www.notion.so'|Notion Web"
     # Agrega o comenta líneas según tus necesidades
   )
   ```

---

## ⚙️ Configurar ejecución automática al inicio

### 🐧 Debian y derivados (Ubuntu, Linux Mint...)

1. Abre la terminal y ejecuta:

   ```bash
   mkdir -p ~/.config/autostart
   ```

2. Crea el archivo `.desktop`:

   ```bash
   nano ~/.config/autostart/cickly.desktop
   ```

3. Pega el siguiente contenido:

   ```ini
   [Desktop Entry]
   Type=Application
   Exec=/ruta/completa/a/cickly.sh
   Hidden=false
   NoDisplay=false
   X-GNOME-Autostart-enabled=true
   Name=Cickly
   Comment=Script de inicio personalizado
   ```

4. Guarda y cierra con `CTRL+O` y `CTRL+X`.

---

### 🐧 Arch Linux y derivados (Manjaro, EndeavourOS...)

Sigue los mismos pasos que en Debian, o usa `systemd` para mayor control:

```bash
mkdir -p ~/.config/systemd/user
cp cickly.service ~/.config/systemd/user/
systemctl --user enable cickly.service
```

> Puedes crear `cickly.service` con el siguiente contenido:

```ini
[Unit]
Description=Ejecutar Cickly al inicio

[Service]
ExecStart=/ruta/completa/a/cickly.sh
Restart=on-failure

[Install]
WantedBy=default.target
```
---

### 🖥️ Método gráfico (GNOME y KDE Plasma):

#### **GNOME (Ubuntu, Debian, etc.)**:

  1. Presiona `Super` (tecla Windows) y busca **Aplicaciones al inicio**.
  2. Haz clic en **Añadir** o **+**.
  3. En *Nombre*, pon: `Cickly`.
  4. En *Comando*, introduce la ruta completa al script, por ejemplo:
     `/home/usuario/Cickly/cickly.sh`
  5. Opcionalmente, añade una *descripción*.

#### **KDE Plasma (Kubuntu, Manjaro KDE, etc.)**:

  1. Abre el menú y busca **Preferencias del sistema**.
  2. Ve a **Inicio y apagado → Autoarranque**.
  3. Haz clic en **Añadir script**.
  4. Selecciona `cickly.sh` desde su ubicación.
---

## 🛠️ Personalización

Simplemente edita el bloque `apps=(...)` dentro del script:

```bash
apps=(
  "telegram-desktop|Telegram"
  "xdg-open 'https://web.whatsapp.com'|WhatsApp Web"
  "code|Visual Studio Code"
)
```

* Cada línea tiene el formato: `"comando|Nombre visible"`.
* Puedes agregar, quitar o comentar líneas a tu gusto.

Puedes contar con la ayuda de la lista de aplicaciones que he creado y que está disponible [aquí](https://github.com/bc09880/Cickly/blob/main/Lista.md).

---

## 🧠 Ejemplo de salida al ejecutar

```bash
🚀 Iniciando aplicaciones de productividad...
Abriendo Telegram...
Abriendo Visual Studio Code...
⚠️  WhatsApp Web no está instalada o el comando 'xdg-open ...' no está disponible.
✅ Proceso terminado. Las aplicaciones disponibles fueron abiertas.
```

---

## ❗ Contribuciones y errores

> ¿Algo no funciona como debería?
> Puedes colaborar abriendo un **Issue** o enviando un **Pull Request** con la solución.

- 📬 **Contacto:** [bc09880@pm.me](mailto:bc09880@pm.me)
- 🐱 **Repositorio oficial:** [https://github.com/bc09880/Cickly](https://github.com/bc09880/Cickly)

---

## 📄 Licencia

Este proyecto está bajo la Licencia MIT.
Puedes usar, modificar y compartir libremente, siempre citando el autor original.
