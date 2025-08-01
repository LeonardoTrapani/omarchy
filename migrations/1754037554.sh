echo "Create SSH config file for 1Password ssh agent"

if ! yay -Q 1password-beta 1password-cli &>/dev/null; then
  mkdir -p ~/.ssh

  if [ -f ~/.ssh/config ]; then
      cp ~/.ssh/config ~/.ssh/config.bak
      echo "Existing SSH config backed up to ~/.ssh/config.bak"
  fi

  cat > ~/.ssh/config << 'EOF'
  Host *
    IdentityAgent ~/.1password/agent.sock
  EOF

  echo "SSH config file created at ~/.ssh/config"
fi
