
ZSHRC_FILE=~/.zshrc_tmp

if test -f "$ZSHRC_FILE"; then
  echo "Moving $ZSHRC_FILE to ${ZSHRC_FILE}.bak"
  mv $ZSHRC_FILE ${ZSHRC_FILE}.bak
fi
