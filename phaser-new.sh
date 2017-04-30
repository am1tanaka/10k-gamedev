#!/bin/bash
cd ~/phaser

# input project name
read -p "プロジェクト名を入力してください:" proname

# copy base folder
cp -r phaser-boilderplate $proname

# change new project folder
cd $proname

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

