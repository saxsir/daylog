# Daylog

slackの"オープンな個人チャンネル"から1日の作業を取得するスクリプト

## Setup
1. Install dependencies
```
$ make install
```

1. Generate your token on [https://api.slack.com/web](https://api.slack.com/web)
2. Copy your token
3. Copy config.yml
```
$ make setup
```
4. Edit config.yml
```
$ {EDITOR} config.yml
$ cat config.yml
token: xoxp-XXX-XXX-XXX-XXX
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/saxsir/daylog.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
