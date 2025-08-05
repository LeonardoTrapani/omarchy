#!/bin/bash

if [ -z "$OMARCHY_BARE" ]; then
  ~/.local/share/omarchy/bin/omarchy-webapp-install "WhatsApp" https://web.whatsapp.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/whatsapp.png
  ~/.local/share/omarchy/bin/omarchy-webapp-install "ChatGPT" https://chatgpt.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/chatgpt.png
  ~/.local/share/omarchy/bin/omarchy-webapp-install "YouTube" https://youtube.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/youtube.png
  ~/.local/share/omarchy/bin/omarchy-webapp-install "GitHub" https://github.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/github-light.png
  ~/.local/share/omarchy/bin/omarchy-webapp-install "X" https://x.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/x-light.png
  ~/.local/share/omarchy/bin/omarchy-webapp-install "Jira" https://datapizza.atlassian.net/jira/software/c/projects/DT/boards/5 https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/atlassian-jira.png
  ~/.local/share/omarchy/bin/omarchy-webapp-install "Calendar" https://app.usemotion.com/web/calendar https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-calendar.png
  ~/.local/share/omarchy/bin/omarchy-webapp-install "Mail" https://mail.google.com/mail/u/0/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/gmail.png
  ~/.local/share/omarchy/bin/omarchy-webapp-install "Omarchy Manual" https://manuals.omamix.org/2/the-omarchy-manual https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/arch-linux.png
  ~/.local/share/omarchy/bin/omarchy-webapp-install "Discord" https://discord.com/channels/@me https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/discord.png
fi
