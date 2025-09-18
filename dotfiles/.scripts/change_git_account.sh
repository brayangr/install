# !bin/bash

SSH_PATH=$HOME/.ssh
account=$1

rm $SSH_PATH/id_ed25519.pub
rm $SSH_PATH/id_ed25519
ln $SSH_PATH/${account}_key.pub $SSH_PATH/id_ed25519.pub
ln $SSH_PATH/${account}_key $SSH_PATH/id_ed25519
