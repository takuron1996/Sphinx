Webページを取得
=====================================

-----------------------------
クローリングとスクレイピング
-----------------------------

+++++++++++++++++
クローリング
+++++++++++++++++

Webページのハイパーリンクを辿って次々にWebページをダウンロードする作業

+++++++++++++++++
スクレイピング
+++++++++++++++++

ダウンロードしたWebページから必要な情報を抜き出す作業

--------------------
完成形
--------------------

| 今回、作成するのはクローリングのコードです。
| https://takuron1996.github.io/Sphinx/index.html のデータを取得して、HTMLファイルに出力します。

.. code-block:: python
 :linenos:

 from urllib.request import urlopen
 import ssl
 ssl._create_default_https_context = ssl._create_unverified_context

 url = 'https://takuron1996.github.io/Sphinx/index.html'
 file = 'result.html'

 with urlopen(url) as request:
     encodig = request.info().get_content_charset(failobj='utf-8')
     with open(file, mode='w') as html:
         html.write(request.read().decode(encodig))

* 1行目：urllibという標準ライブラリからurlopen関数だけをインポートする
* 2行目：sslというPython標準ライブラリから全てのコードをインポートする
* 3行目：sslの証明書を検証しないように設定（とりあえず動かすために）
* 5行目：url変数にpythonのドキュメントのURLを代入
* 6行目：file変数に出力するファイル名を代入
* 8行目：指定されたURLのウェブサーバーに接続し、特定のウェブサービスを要求する。
* 9行目：HTTPヘッダーからエンコーディングを取得する。（取得できなかった場合はutf-8を設定）
* 10行目：指定したファイル名でファイルの書き込み準備を実施する
* 11行目：応答データをエンコーディングでデコードしてファイルに書き込む

--------------------
実行方法
--------------------

.. code-block:: sh

 $ python3 example.py

実行すると、result.htmlというファイルがexample1ディレクトリの下に作成されます。
これを開くと取得したHTMLのデータを確認することができます。

.. code-block:: sh

 $ pwd
 /Users/taku/Desktop/web/example1
 $ ls
 example.py result.html
 $ open result.html
