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
wget -N --no-check-certificate https://raw.githubusercontent.com/am1tanaka/10k-gamedev/master/install-gdev
chmod 700 install-gdev
./install-gdev
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
非常にシンプルなPhaserのプロジェクトを作成して、自分でコーディングができることを確認します。

## プロジェクトの作成方法
LXTerminal で以下のコマンドを実行することで、新しいプロジェクトフォルダーを作成します。ここでは最初のプロジェクトということで first という名前のプロジェクトを作成します。

```
cd ~/phaser
./phaser-new-smpl first
```

プロジェクトが作成できたら、以下のコマンドで、作成した`first`フォルダーに移動します。

```
cd first
```

## プロジェクトを起動する
作成したプロジェクトの動作をWebブラウザーで確認できるように、サーバーを起動します。

```
npm run serve
```

サーバーが起動します。LXTerminalはサーバーに専念するので入力は受け付けなくなります。

Webブラウザーを起動して、 http://0.0.0.0:8000 を開いてください。黒い画面の左上に星が表示されれば成功です。

## プログラムをエディターで開く
新しいLXTerminalを開くために、先ほどのLXTerminal上で右クリックして、[新しいウィンドウ]をクリックしてください。

これで、新しいLXTerminalが、先ほどと同じフォルダーを開いた状態で起動できます。以下のコマンドを入力して、Atomエディターを起動します。

```
atom .
```

しばらく待つと Atom エディターが、 first フォルダーを開いた状態で開きます。

## プログラムを編集する
プログラムを書き換えて動きを確認してみましょう。Atomの左の一覧から、`_site`>`src` フォルダーを開いてください。以下の5つのプログラムが確認できます。

- boot.js
- create.js
- preload.js
- render.js
- update.js







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

# install.shの短縮
https://goo.gl/SZ8WXk

これをwgetでダウンロードするには？



