# ベースにするイメージ
FROM ruby:3.0.4

# RailsのインストールやMySQLの接続に必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client

# コンテナ内にmyqppディレクトリ作成
RUN mkdir /myapp

# 作成したディレクトリを作業用ディレクトリに設定
WORKDIR /myapp

# ローカルのGemfileとGemfile.lockをコンテナ内のmyqpp配下にコピー
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

# コンテナ内にコピーしたGemfileのbundle install
RUN bundle install

ADD . /myapp


# 追加分
COPY start.sh /usr/bin/
RUN chmod +x /usr/bin/start.sh
ENTRYPOINT [ "start.sh" ]
EXPOSE 3000
CMD ["bin/start"]