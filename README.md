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

# Phaserのサンプルを動かす
Phaserのサンプルはインストール済みです。LXTerminalを起動して、以下を実行して、ローカルサーバーを起動します。

```
cd ~/phaser/phaser-examples/examples
php -S 0.0.0.0:8000
```

サーバーが起動したら、LXTerminalは待機状態になります。Webブラウザーを開いて、 http://0.0.0.0:8000/sideview.html を開きます。画面の左にサンプルの一覧が表示されます。サンプルは800以上もあるので、下にスクロールさせてリストを見てみましょう。動かしてみたいサンプルをクリックすると、画面の右で実行されます。

一部、インターネットが繋がっていないと動かないサンプルがあるようですが、多くのサンプルはオフラインで見ることができます。色々と試してください。

## サーバーを停止する
サーバーを起動していた LXTerminal に切り替えて、[Ctrl]+[C]キーを押します。以下のようにプロンプトが表示されたらサーバーが停止しましたので、不要であれば LXTerminal を閉じて構いません。

# プロジェクトを作成する
Phaserで開発を始めるスタート地点として、[Phaser Webpack Loader](https://github.com/goldfire/phaser-webpack-loader)というパッケージを利用します。これを複製したものを改造していきましょう。

複製するためのスクリプトは準備済みですので、

## 開発を始める
開発を始める時の手順です。

```
cd ~/phaser/プロジェクトフォルダー名
atom .
npm run dev:serve
```

以上でビルドが実行されて、待っていると自動的にブラウザーが起動して、ライブプレビューが始まります。

## 変更
最初はWEBGLが有効なので、AUTOに変更します。




# ボイラープレート(これはシェルでスクリプトを作成中)
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



## 選択肢
似たもので https://github.com/mattcolman/phaser-manifest-loader があったが、圧縮テクスチャへの対応、Retina対応、サンプルプログラムの出来から、phaser-webpack-loaderを採用しました。

# サンプルの改造目標
- 画面サイズを固定
- タイトル画面、ゲーム、ゲームオーバーを設定
- 岩を出現させて動かす。跳ね返るごとにスピードアップ
- 左右キーで旋回、上下キーで加速、減速
- どれだけ長く生きられるか
- BGMと効果音の実装



