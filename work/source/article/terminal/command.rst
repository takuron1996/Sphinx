使用コマンド
=====================================

今回ターミナルで使用するコマンドの簡単な説明を行っています。

--------------------
cd
--------------------

| ディレクトリの移動を行うために使用します。
| 使用方法としては

.. code-block:: sh

 $ cd [ディレクトリのパス]

| のようにして指定したディレクトリのパスに移動します。
| . は現在の位置、
| .. は一つ上の場所を表現します。

--------------------
pwd
--------------------

| 今開いているディレクトリのパスを表示します。
| 例としてはUserディレクトリ下にあるexampleというディレクトリにいる場合、

.. code-block:: sh

 $ pwd
 /User/example

と表示されます。

--------------------
mkdir
--------------------

| ディレクトリを作成するコマンドです。
| 使用方法としては

.. code-block:: sh

 $ mkdir [ディレクトリ名]

のようにすると指定したディレクトリ名のディレクトリが作成されます。

--------------------
ls
--------------------

| 現在のディレクトリに存在する、ディレクトリやファイルを表示します。
| ディレクトリ内にfile、directoryというファイルとディレクトリが存在する場合、

.. code-block:: sh

 $ ls
 directory file

と表示されます。

--------------------
touch
--------------------

| ファイルのタイムスタンプを変更したり、
| 存在しないファイル名を指定することで、内容の入っていないファイルを新規作成することができるコマンドです。
| 今回はファイルの新規作成で使用します。

.. code-block:: sh

 $ touch [ファイル名]

ファイル名の部分に存在していないファイル名を指定するとファイルを新規作成することができます。