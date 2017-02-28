#!/bin/bash
echo -n 'Restoring packages...'
apm install --packages-file my-packages.txt
echo ' done!'

echo -n 'Restoring config...'
cp ./config.cson ~/.atom/config.cson
echo ' done!'

echo -n 'Restoring init file...'
cp ./init.coffee ~/.atom/init.coffee
echo ' done!'

echo -n 'Restoring keymap...'
cp ./keymap.cson ~/.atom/keymap.cson
echo ' done!'

echo -n 'Restoring snippets...'
cp ./snippets.cson ~/.atom/snippets.cson
echo ' done!'

echo -n 'Restoring styles...'
cp ./styles.less ~/.atom/styles.less
echo ' done!'

echo -n 'Setting up ownerships and permissions...'
chown $USER:$USER ~/.atom/config.cson
chown $USER:$USER ~/.atom/init.coffee
chown $USER:$USER ~/.atom/keymap.cson
chown $USER:$USER ~/.atom/snippets.cson
chown $USER:$USER ~/.atom/styles.less
chmod 644 ~/.atom/config.cson
chmod 644 ~/.atom/init.coffee
chmod 644 ~/.atom/keymap.cson
chmod 644 ~/.atom/snippets.cson
chmod 644 ~/.atom/styles.less
echo ' done!'

echo 'Restore succesful!'
