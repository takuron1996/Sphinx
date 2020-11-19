FROM sphinxdoc/sphinx

# フロー図を追加
RUN pip install sphinxcontrib-seqdiag

# マークダウンを追加
RUN pip install --upgrade recommonmark
