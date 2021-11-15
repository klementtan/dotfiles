
ZSHRC_FILE=~/.zshrc
CONFIG_DIR=~/.config

if test -f "$ZSHRC_FILE"; then
  echo "Moving $ZSHRC_FILE to ${ZSHRC_FILE}.bak"
  mv $ZSHRC_FILE ${ZSHRC_FILE}.bak
fi

if test -f "$CONFIG_DIR"; then
  echo "Moving $CONFIG_DIR to ${CONFIG_DIR}_bak"
  mv $CONFIG_DIR ${CONFIG_DIR}.bak
fi
