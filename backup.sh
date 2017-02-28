#!/bin/bash
echo -n 'Backing up packages...'
apm list --installed --bare > my-packages.txt
echo ' done!'

echo -n 'Backing up config...'
cp ~/.atom/config.cson ./config.cson
echo ' done!'

echo -n 'Backing up init file...'
cp ~/.atom/init.coffee ./init.coffee
echo ' done!'

echo -n 'Backing up keymap...'
cp ~/.atom/keymap.cson ./keymap.cson
echo ' done!'

echo -n 'Backing up snippets...'
cp ~/.atom/snippets.cson ./snippets.cson
echo ' done!'

echo -n 'Backing up styles...'
cp ~/.atom/styles.less ./styles.less
echo ' done!'

echo 'Backup succesful!'
