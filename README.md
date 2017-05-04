# 10k-gamedev(WIP 作業中)
1万円(+インターネット)ではじめるゲーム開発用リポジトリー。

まだ作業中です。

# インストール
Lubuntuのインストールが済んで起動したら、以下を実行します。

- 左下のメニューをクリック > 実行
- lxte と入力して、 LXTerminal を起動
- 以下のコマンドを実行

```
cd ~
wget -N https://raw.githubusercontent.com/am1tanaka/10k-gamedev/master/install-gdev.sh
chmod 700 install-gdev.sh
./install-gdev.sh
```

- 開始すると、すぐに Lubuntu の管理者パスワードの入力が要求されるので入力してください。
- 途中で「ソフトウェアパッケージをインストールしますか？」と表示されたら、[Y]キーを押して[Enter]キーを押します

# ボイラープレート
PhaserをWebpackでビルドするパッケージ[Phaser Webpack Loader](https://github.com/goldfire/phaser-webpack-loader)を組み込みます。
ひな型に丁度良いボイラープレートがあるので、これを利用します。

- https://github.com/goldfire/phaser-boilerplate 

```
cd ~/phaser
git clone https://github.com/goldfire/phaser-boilerplate.git プロジェクトフォルダー名
cd プロジェクトフォルダー名
npm i
npm i tern-phaser
```

## 開発ビルド
```
npm run dev
```

以上でビルドが実行されて、待っていると自動的にブラウザーが起動して、ライブプレビューが始まります。

## 改変
最初はWEBGLが有効なので、AUTOに変更します。

## 選択肢
似たもので https://github.com/mattcolman/phaser-manifest-loader があったが、圧縮テクスチャへの対応、Retina対応、サンプルプログラムの出来から、phaser-webpack-loaderを採用しました。

# サンプルの改造目標
- 画面サイズを固定
- タイトル画面、ゲーム、ゲームオーバーを設定
- 岩を出現させて動かす。跳ね返るごとにスピードアップ
- 左右キーで旋回、上下キーで加速、減速
- どれだけ長く生きられるか
- BGMと効果音の実装

