
SHELL_COMMANDS_DIR=~/.shell-commands

LOG_FILE=~/.shell-commands-log

echo "[$(date +'%Y-%m-%dT%H:%M:%S')] [START] setup_bash_commands" >> $LOG_FILE
echo "[$(date +'%Y-%m-%dT%H:%M:%S')] [START] PWD: ${PWD}" >> $LOG_FILE

git clone https://github.com/eyalev/shell-history.git $SHELL_COMMANDS_DIR

touch ~/.bash_history

TEMP_HISTORY=/tmp/bash_history_temp

cat $SHELL_COMMANDS_DIR/bash_commands > $TEMP_HISTORY
cat ~/.bash_history >> $TEMP_HISTORY
mv $TEMP_HISTORY ~/.bash_history

echo "[$(date +'%Y-%m-%dT%H:%M:%S')] [END] setup_bash_commands" >> $LOG_FILE

