#!/usr/bin/env bash
OSJS_URI=https://github.com/os-js

OSJS_REPOS=(
  # Misc
  "eslint-config"
  "stylelint-config"

  # Meta
  "osjs-dev-meta"

  # Core
  "osjs-client"
  "osjs-common"
  "osjs-cli"
  "osjs-dialogs"
  "osjs-server"
  "osjs-panels"
  "osjs-gui"
  "osjs-event-emitter"

  # Extras
  "osjs-widgets"
  "osjs-installers"

  # Themes
  "osjs-windows8-theme"
  "osjs-standard-theme"
  "osjs-standard-dark-theme"
  "osjs-freedesktop-sounds"
  "osjs-gnome-icons"

  # Providers
  "osjs-proc-provider"
  "osjs-gapi-provider"
  "osjs-wireless-tools-provider"

  # Adapters
  "osjs-webdav-adapter"
  "osjs-pam-auth"
  "osjs-gdrive-adapter"
  "osjs-database-settings"
  "osjs-database-auth"
  "osjs-ftp-adapter"

  # Examples
  "osjs-example-vue-application"
  "osjs-example-react-application"
  "osjs-example-provider"
  "osjs-example-iframe-application"
  "osjs-example-application"

  # Applications
  "osjs-xterm-application"
  "osjs-xpra-application"
  "osjs-writer-application"
  "osjs-webodf-application"
  "osjs-vnc-application"
  "osjs-textpad-application"
  "osjs-strophejs-application"
  "osjs-settings-application"
  "osjs-preview-application"
  "osjs-pdfreader-application"
  "osjs-musicplayer-application"
  "osjs-htmlviewer-application"
  "osjs-filemanager-application"
  "osjs-epub-application"
  "osjs-draw-application"
  "osjs-calculator-application"
  "osjs-ace-application"
)

for r in ${OSJS_REPOS[*]}; do
  url="${OSJS_URI}/${r}"
  dest="packages/${r}"

  echo "${url} -> ${dest}"
  git clone $url $dest
done

git clone "${OSJS_URI}/OS.js" "distros/development"
