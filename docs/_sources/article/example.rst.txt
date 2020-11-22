例題
=====================================

| 実際にスクレイピングを行いながらPythonを学んでいきます。
| まずはPythonの標準にある機能のみを用いてスクレイピングを実施します。

-------------------------
例題1　Webページの取得
-------------------------

Webページを取得してファイルに書き込むところまでを実施します。

| /Users/{自分のユーザ名}/Desktop/web下に例題用のディレクトリを用意して実施していきます。
| まず/Users/{自分のユーザ名}/Desktop/web下にexample1（例題1という意味）のディレクトリを作成します。
| その後で作成したディレクトリに移動します。

.. code-block:: sh

 $ pwd
 /Users/taku/Desktop/web
 $ mkdir example1
 $ ls
 example1
 $ cd example1
 $ pwd
 /Users/taku/Desktop/web/example1

| 次に、Pythonのファイルを作成します。
| ファイル名はexample.pyとします。

.. code-block:: sh

 $ touch example.py
 $ ls
 example.py

エディタを用いてexample.pyを開きます。

例としては、

.. code-block:: sh

 $ open .

でfinderを開いてからexample.pyを右クリックして

.. code-block:: none

 「このアプリケーションで開く」 → 「好きなエディタ」

| で開くことができます。
| このアプリケーションで開くで開きたいエディタを選択できている場合は

.. code-block:: sh

 $ open example.py

でエディタを用いてexample.pyを開くことができます。

ここからPythonを用いてWebページの取得を行います。

.. toctree::
   :maxdepth: 2

   ./example/example1

例題1が終わったら/Users/{自分のユーザ名}/Desktop/webに戻ります。

.. code-block:: sh

 $ pwd
 /Users/taku/Desktop/web/example1
 $ cd ../
 $ pwd
 /Users/taku/Desktop/web

これで例題1は終了です。

