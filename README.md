# docker-solargraph

Solargraph runs in a Docker container.

Ruby の言語サーバ [Solargraph](https://solargraph.org/) を Docker コンテナ上で動かします。

## Usage

次の環境変数を設定します。`.env.sample` を `.env` としてコピーするとよいでしょう。

| 変数名 | 値の例 | 説明 |
|:--|:--|:--|
| `PORT` | `7658` | 言語サーバに接続するために使用するポート番号。 |
| `RUBY_VERSION` | `latest`, `2.7` | 使用する Ruby のバージョン。[公式イメージ](https://hub.docker.com/_/ruby)で利用可能なバージョンを指定してください。 |
| `SOURCE_PATH` | `/path/to/src` | 使用するソースコードを含むディレクトリのパス。 |

あとは `docker-compose up` でコンテナを起動すれば準備完了です。

## Visual Studio Code

Visual Studio Code で Solargraph を使うには、拡張機能 [Ruby Solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph) をインストールします。

インストール後、`settings.json` に以下の設定を追加してください。`port` は環境変数 `PORT` の値と同じにする必要があります。

```json
{
  "solargraph.diagnostics": true,
  "solargraph.externalServer": {
    "host": "localhost",
    "port": 7658
  },
  "solargraph.transport": "external"
}
```

設定項目の意味やその他の設定については、拡張機能の説明をご覧ください。

## License

See [LICENSE](./LICENSE).
