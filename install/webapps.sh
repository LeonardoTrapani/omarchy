#!/bin/bash

if [ -z "$OMARCHY_BARE" ]; then
  source ~/.local/share/omarchy/default/bash/functions
  web2app "WhatsApp" https://web.whatsapp.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/whatsapp.png
  web2app "ChatGPT" https://chatgpt.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/chatgpt.png
  web2app "YouTube" https://youtube.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/youtube.png
  web2app "GitHub" https://github.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/github-light.png
  web2app "X" https://x.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/x-light.png
  web2app "Omarchy Manual" https://manuals.omamix.org/2/the-omarchy-manual https://manuals.omamix.org/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6NDgsInB1ciI6ImJsb2JfaWQifX0=--c26606490139480f5bcb3cf91b09fc45825007f6/omarchy.jpg?disposition=attachment
  web2app "Jira" https://datapizza.atlassian.net/jira/software/c/projects/DT/boards/5 https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/atlassian-jira.png
  web2app "Calendar" https://app.usemotion.com/web/calendar https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-calendar.png
  web2app "Mail" https://mail.google.com/mail/u/0/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/gmail.png
fi
