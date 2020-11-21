FROM sphinxdoc/sphinx

# フロー図を追加
RUN pip install sphinxcontrib-seqdiag

# マークダウンを追加
RUN pip install --upgrade recommonmark

# プレビューの追加
RUN pip install sphinx-autobuild
# プレビュー用のポートを開放
EXPOSE 8000
