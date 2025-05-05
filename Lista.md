# 📄 Lista de Aplicaciones para agregar al script

Comandos para implementar aplicaciones web y del sistema en tu script de inicio automático. Organizado por categoría.

---

> [!IMPORTANT]
> 💡 ¿Algo no funciona como debería? Puedes colaborar abriendo un **Issue** o enviando un **Pull Request** con la solución. ¡Gracias por contribuir!

## 💬 Mensajería Web

```bash
xdg-open 'https://web.whatsapp.com/'             | WhatsApp Web
xdg-open 'https://discord.com/app'               | Discord Web
xdg-open 'https://web.telegram.org/'             | Telegram Web
xdg-open 'https://www.messenger.com/'            | Facebook Messenger Web
xdg-open 'https://messages.google.com/web'       | Google Messages Web
xdg-open 'https://signal.org/es/'                | Signal Web Info
xdg-open 'https://chat.openai.com'               | ChatGPT
xdg-open 'https://www.instagram.com/direct/inbox/' | Instagram DM Web
xdg-open 'https://teams.microsoft.com/'          | Microsoft Teams Web
xdg-open 'https://tawk.to'                       | Tawk.to Chat Web
````

---

## 💻 Mensajería Local

```bash
flatpak run org.telegram.desktop                 | Telegram (Flatpak)
flatpak run org.signal.Signal                    | Signal (Flatpak)
flatpak run com.discordapp.Discord               | Discord (Flatpak)
flatpak run com.github.eneshecan.WhatsAppForLinux | WhatsApp (Flatpak)
flatpak run com.slack.Slack                      | Slack (Flatpak)
flatpak run com.skype.Client                     | Skype (Flatpak)
flatpak run com.microsoft.Teams                  | Teams (Flatpak)
snap run telegram-desktop                        | Telegram (Snap)
snap run discord                                 | Discord (Snap)
discord                                          | Discord (sistema)
```

---

## 📨 Correo Electrónico Web

```bash
xdg-open 'https://mail.google.com'              | Gmail Web
xdg-open 'https://outlook.live.com/mail'        | Outlook Web
xdg-open 'https://mail.proton.me/u/0'           | ProtonMail Web
xdg-open 'https://mail.infomaniak.com/'         | Infomaniak Web
xdg-open 'https://mail.yahoo.com/'              | Yahoo Mail Web
xdg-open 'https://mail.zoho.com/'               | Zoho Mail Web
xdg-open 'https://www.gmx.com/'                 | GMX Mail Web
xdg-open 'https://www.fastmail.com/'            | Fastmail Web
xdg-open 'https://mail.icloud.com/'             | iCloud Mail Web
xdg-open 'https://custom-client-url.example.com'| Custom Web Client
```

> \[!NOTE]
> Reemplaza `custom-client-url.example.com` con tu propio enlace y ajusta el nombre al cliente que uses.

---

## 📧 Correo Electrónico Local

```bash
flatpak run org.mozilla.Thunderbird             | Thunderbird (Flatpak)
snap run thunderbird                            | Thunderbird (Snap)
thunderbird                                     | Thunderbird (sistema)
geary                                           | Geary
evolution                                       | Evolution
kmail                                           | KMail
mailspring                                      | Mailspring
claws-mail                                      | Claws Mail
aerc                                            | Aerc (terminal)
heirloom-mailx                                  | Mailx (terminal)
```

---

## 🧾 Ofimática Web

```bash
xdg-open 'https://docs.google.com'              | Google Docs
xdg-open 'https://office.live.com'              | Microsoft Office Web
xdg-open 'https://onlyoffice.com/es/'           | OnlyOffice Web
xdg-open 'https://notion.so'                    | Notion
xdg-open 'https://www.overleaf.com/'            | Overleaf
xdg-open 'https://www.zoho.com/docs/'           | Zoho Docs
xdg-open 'https://quillbot.com/'                | Quillbot
xdg-open 'https://grammarly.com/'               | Grammarly
xdg-open 'https://hackmd.io/'                   | HackMD
xdg-open 'https://app.diagrams.net/'            | draw.io
```

---

## 🗂️ Ofimática Local

```bash
libreoffice --writer                            | LibreOffice Writer
libreoffice --calc                              | LibreOffice Calc
onlyoffice-desktopeditors                       | OnlyOffice Desktop
obsidian                                        | Obsidian
notion-app                                      | Notion Desktop
vscodium                                        | VSCodium
code                                            | Visual Studio Code
typora                                          | Typora
gnome-text-editor                               | Editor GNOME
kate                                            | Kate
```

---

## 🌐 Navegadores

```bash
brave-browser                                   | Brave
vivaldi                                         | Vivaldi
chromium                                        | Chromium
firefox                                         | Firefox
librewolf                                       | LibreWolf
tor-browser                                     | Tor Browser
midori                                          | Midori
epiphany                                        | GNOME Web
google-chrome                                   | Google Chrome
microsoft-edge-stable-bin                       | Microsoft Edge
```

> \[!NOTE]
> Puedes usar estos navegadores para abrir enlaces o como navegador predeterminado.

---

## ✨ Ejemplo para script

```bash
flatpak run org.signal.Signal                   | Signal
xdg-open 'https://mail.google.com'              | Gmail Web
brave-browser                                   | Brave
obsidian                                        | Obsidian
code                                            | Visual Studio Code
```

---
