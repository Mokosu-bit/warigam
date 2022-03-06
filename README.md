# WariGam

## サービス概要

ギャンブル要素のある割り勘サービスです。

## メインのターゲット

- 複数人で飲食店を利用する人
- 支払いを男気じゃんけんで決めることがある人
- 支払い時、誰がいくら出すか決めれない人
- 食べ歩きをする人
- 後輩とよく食事に行って奢っている人

## ユーザーが抱える問題

- 後輩の人数が多く、食事に行く回数が多いと支払いが厳しい
- 男気じゃんけんで決めることはあるが、もっとドキドキしたい

## 解決方法

- 楽しく割り勘することで、先輩・後輩関係なくする
- 複数の割り勘方法で、楽しめるようにする

## 実装予定の機能

- MVP
  - 割り勘機能
    - 人数ルーレット
      - 金額入力後、○人中○人が支払うか決めてルーレット(出た人が均等に割って支払い)
    - 単位ルーレット
      - 金額入力その場の人数選択後、ルーレット(例：5,678円 → 8円：Aさん, 70円：Bさん, 600円：Cさん, 5,000円：Dさん)
  - LINE ログイン
- 本リリース
  - 割り勘機能
    - ランダム振り分け
      - 金額入力・その場の人数選択後、金額ランダム振り分け(例：8,000円 → Aさん：2,600円, Bさん：4,200円, Cさん：1,200円)
  - リアルタイムルーレット

## なぜこのサービスを作りたいのか？

自分はスポーツをしていて、練習後に複数人の後輩を連れて食事に行くのですが、
回数が多いと支払いが厳しいこともあり、どうにかできないかと思っていました。
後輩の立場だと、全然出します！と思えても、先輩の立場だと、出してあげたい・
出すのが当たり前と思っている人もいると思います。
そこで、支払う人を楽しく決めれたら先輩・後輩を気にならないんじゃないかと考えました。
あと、複数人の友達と支払いのことでじゃんけんすることが多く、もっと決め方があったら
面白いんじゃないかと考えたのもあります。
その考えも含め、楽しく盛り上がれるようなサービスにしたいと考えています。

## スケジュール

企画〜技術調査：1/9〆切

README〜ER図作成：2/10〆切

メイン機能実装：2/10 - 2/25

β版をRUNTEQ内リリース(MVP)：2/25〆切

本番リリース：3/10

## 画面遷移図
https://www.figma.com/file/D0fvPI8ZKFzfRTnjo9cc2d/WariGam?node-id=0%3A1

## ER図
https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Warigam%20Diagram.drawio#R7V1bc9o4FP41zOw%2BpOMrl8eQS7st2baku9s8ZZRYAbe25RoRoL9%2BZSxfYjmOBMYYWzOdDlLEwdb5dD50Ph3T0y%2Fc9fsA%2BPMbZEGnpynWuqdf9jRtZPTJ%2F2HHJuowh6OoYxbYVtSlph239m9IOxXau7QtuHgxECPkYNt%2F2fmIPA8%2B4hd9IAjQ6uWwJ%2BS8%2FFQfzCDTcfsIHLb3P9vC86h3qA3S%2Fg%2FQns3jT1b79P5cEA%2Bmd7KYAwutMl36VU%2B%2FCBDC0St3fQGdcO7iecFfJ7%2Fcy5svN6u7j5tze4LRbH0WGbsWeUtyCwH0cLWmtcj0M3CWdL6WCxgs6A3jTTyL5N798CUGD2HXeIFBgKmzdYV0EPdhYHswIB3qtu04wF%2FY2%2BFRz9x2rAnYoCWODcWt8ZO9htY08nU4lrh9QoyFzdD4EzF%2BSy8m%2FDNw7JlHXj%2BS%2BQg%2FcRzABbmWCVhgOoJzxujMPsMAw3UGL3QG30PkQhxsyBD6V2NAwUBXgzGi7VWKLXVI%2B%2BZZXOm0E1A8zxLbqc%2FIC%2Bo2ARfqjAvLvTcNMTyeo8D%2BHfrMoXOc9ei2vbJdB3hkcQAr1zVG22Cw9YztOBfIQaHbPeRBxvPhICtA%2FjcQzCCmHT6yPbydB3NM%2FpGZuVDemT2TXOsFaatpm%2FwLhwf4AnkLHBCEhTYgcfQKhs4eY%2BRTow58iu0HdN7D1w8IY%2BSKwULjhgWFgc6JgoOBwGBA8OXTqzAg949t4ExJuAXezImcto2%2BIHVagWcL5zqZ3%2FzE5xctItP55GwD6Ny2LOjx%2B0Pn9kfGAbrg%2FFNj6awIWwMOiUYewGSBLD1rwTg1uc7d%2FWwyfibDj%2BvnOBhHY8cLHzza3mwSvbOfA4JZFxDWry9Ms1JgcJmrARl9SQNcNKAckAb6x6aBAT8I6gkO0LJje3tyQJ%2FbGW3ngCHjZA%2B4sOksUIvrOxf1RzLqHz3q824BDxb141RLG8P%2BiNsbbQ%2F7qsp42bMff7Y89vP7v3OxX2U3g%2FAZhrFVZu%2F4sncq7xd2dXSw2C33bZWn75KFcTr5O5XdubUpgafK3VsyFez2rVMpPAEodI7RTYEv8p0mA4HtnDgZHD2LZ7Lf9K%2BPTQbV7egSkEsuMDXG0aH8ft98QqjH%2F50jAFXm8xpAAEdP6GkC3wNOLfyrMqOXuJnleWxjp83pPAHvdy74x4tcBv9jBn9VO3r0FzjRd2rRP8G4jP4ae2bPRVabg7%2BA87sX%2FFkxRwb%2F%2BoO%2FefTgL6AHnVzw5%2FdH64M%2Fq%2Fe40H2AQZvDP7%2F7Oxf%2BdfbLQICQK6X816AxiJ0UK7i8Eu4BC3EkhVcu5Sfr4nSkfJ1l8DZJ%2Bbok8WQqWBJvvnJTZTWOJPTX54Y95iHJYM%2F9nDgZHF3K11lBr0VSfgJyyQUGK9m1X8oX8H%2FnCMBgxT1JALUTwNGlfENjYNAiAjD49%2B2tJwBWtdtWY7SbAQQA0GYGOP%2F20%2Fh18xe0VH%2BkK5PZcHh3V3SMk0HCdjcWBXdVC8M%2Fdh26LKFnnYfPPyLNqynx%2Bzd0A7xNzAjpn1zgWZ%2B3sAjCW4ExKxDHBZvvYeOdGTfvEtukcbnOjryMqQOubfw9Hkde36UmSCt9U9hI3mPNYLypJKQwRzPkAecq7RXMAy7QMniEJeNojgXH7PUWY4QXyBueVKUobRh3BtAB2H7OWisF6ZeQU1P4azH7UILSBjlgRrdO35WCkjGk5wypeUPR3DCGKkM3xymFI6BbeQvddSM1FiFPD6qm8hJhxq5Q7ecM6TVDtc%2FmYhzbg%2FcOmtneq%2BTcdYUlXyzZH5gscxcqLP0KvkwXO1Iej95HYSlfHI1UWAovOQbm6Sss5Sjv1Kaq2NPsV%2Bjmb6d2U1j2hULntlcDNrMiyYA%2FwVYRGdSpsBTDoB2npcshLplgwB6Q2uor7Xn8zb4I6B4ByPNWDSCAOhWWYhi048R0OcQlAQzYw1bL5u8F6vF990K%2FPF3VgNBfa6lkMQ4EEoInF%2Fs7ebiqcCpiTGXc7Afo2bbaUi%2BzLwA6RwDDZmrrb6qPVFtP9fREkX9VW2fRspceSecpK0eW0kFj5EgjTjXFcqSZgx2vHGmO3jBUnRz5%2BVkfnt3P7344nz%2Fcv58sLn%2FcGWdsMKsVuoUQVEohuOtRksNDt1Rybwx0zXyx2nBH6A61l4ZM7WDQtb9ayi%2FPG%2FjaePxh8vFs%2Bv7WL4DuDLgPJU%2Bs6bqIruaCVnLcJwO95AfmKhfRC30ozyXvo6GXLot9JPRCFFSxcSq8Yo0BwYkq6KUQ79TOqXAmWHGs%2BTmz3fTzPYFQsoMaVbuD4jFXAzJYPU3SAH8GrRoaKBDP66UBAQWtwemzUnxLDmD1MYzIAr4HLvlI3HQ2qAUCnYv%2BAj8UKKP%2FgaJ%2FgXJeb%2FQXENFOLfoPuJ3R9ujPKmQ%2BRL4D771l9Lwx5Y%2B%2F%2F5lMelfD3vmwR5bRldkbXvfOr%2F88RWbI7h2UyrHSOZoQ%2BWVByRMH4okimb1eoij46cHTLGIvB7kkC5XNC7ariH1fAHSPAdgM4vbctQ82LizZPXZe%2BMmVZ5tqndWTxa6UKb%2FKlZ9keTSyerL4ktmkX6u0H5n4S6aCzfw1n8erVH8qSQCe%2FAG64rmRGcDKd3biZFBn9WTxJbM5wDbt7GQaMJkKNg%2FYqudT7uv%2FzhGAyG8MSgI4FAHUWT1ZDAOB44CnFv4TiMvwH3s1KwNFGZz2HwMQgEH3WEDg6RmSBQ7FArUWUhbjgM0NtmgfoPF7pPVEwGb%2FohKOdu8EBBDQZg6YTs%2F%2FHXu3nzxlpf58AuD7eLniqUfLPjWVTLSNN9NtRRTysk9O5a1aS0vThMste9liy7QYrcJHGbOA4q1ZK9UW3y5ao8naxhStGbmiNdPIQZO73jJnyMgbqq5orRDfHDucavG9T1WmAFKTVaGKrYrdEV783GIW4KXJmOYAPNYHNjmcCgM8Z8jIGzowwNm9XSnAix97XUPw3u059CKFylUHb15sK02DdvNjN2kGCOHs8AD48xtkwXDE%2Fw%3D%3D
