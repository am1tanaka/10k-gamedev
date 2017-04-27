#!/bin/bash
cd ~/phaser

# input project name
read -p "プロジェクト名を入力してください:" proname

# copy base folder
cp -r node_modules/phaser-ce $proname

# change new project folder
cd $proname

# npm install
npm install

# install phaser support
npm install tern-phaser

echo '{
  "ecmaVersion": 6,
  "libs": [
    "browser",
    "jquery"
  ],
  "loadEagerly": [],
  "dontLoad": [
    "node_module/**"
  ],
  "plugins": {
    "phaser": {},
    "doc_comment": true
  }
}
' > .tern-project


# boot atom
atom .

