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
https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Warigam%20Diagram.drawio#R7V1tc6I6GP01ftwdebP149W%2B7Nx27%2B7Yndnup06UqEwD4YZYpb%2F%2BJhBADXKhKtLATGdqHmOE5xzOgTwBe8bY3dwT4C%2B%2FYxuint63Nz3jpqfrmqkP2D8eCePI1WAYBxbEsUWnLPDkvEMR7IvoyrFhsNORYoyo4%2B8GZ9jz4IzuxAAheL3bbY7R7rf6YAGlwNMMIDn627HpMo5e61dZ%2FBt0Fsvkm7Vk%2F1yQdBZ7EiyBjddbIeO2Z4wJxjR%2B5W7GEPHkJXmJP3d34N10wwj0aJkP3D0srhZeeGd%2B961Hd%2FLwevsEvohR3gBaiR1eBZAEYotpmKSBbbzPX1Iw5aFRQAGhAi2jzwIs%2FxQ4HiQsoEVthIAfOFH3OLJ0kP0IQryiyUBJazR3NtCexGDxvgy3RzYYb%2FLB52zwJ7Ex%2FG2AnIXHXs%2FYrvNvHBEYsG15BAEVPeTkJHsKCYWbrZBI1j3ELqQkZF2Sdy0BXLjXXmc80K5FbLnNgYEIAsG9RTp2Bg97IRCqgJYuoVUM1ITzbbTExHnn8CCRzm3wovbacRHwGJGBvRca4ejAjUBwEBpjhDnCHvagBDLvZBPs%2FwJkAakI%2BNjxaJQHa8T%2BWGbG%2Fa9Wz2LbOmZtLWuzP96d0DH2AkoYmfgYkGG6hhzXEcW%2BGBTBeTI%2BEXnnr6eYUuweZEDhAfD%2FtBA0MEqywDgXCQyJBD8fDtKA7T91AJowaQTeAsWgRUoJMtBykM3NdZrf%2FcTvH5%2BYpXOOIrFbOrYNvfJ46KXx2ALAqJh%2FMViWlcqjAcSExwOUHSArzw4kUNPt%2FDjOpoQz635ZnBPdjfuOAh%2FMHG%2FxGH9ysEcEqy4ibA4fmNZJiVFquBqYYXU2UMoG%2Bme0gcGlbWBQngT1iAO0nWS8Iz3AKg2G6h5wJYGM2Gnxiwdc2HQrqAX%2F1kn%2FdSf9F5f%2B4aWlf6iu9F%2BXBkN16U8mwLZQ9pzZq%2BLSXx5%2FlaVfn98%2F309fX%2F%2Bmr%2F%2BYtnt%2F%2B%2B9k8sWULwg77a9b%2BzW9RvHPp0GFq78Gq38xxVsl%2F%2FmpkK%2FvwBtgh64a4n8s%2FCqrf75SyeoP3yAX10IP6LWiVGNe7ZVqyqp0Wpw7%2BTm61k3Snb5WU14fmlKs0WQZV6lao3VTdWkq5Lm6VtVrKlBBZfN%2BD29%2BvJjfpiv8W%2Ff7f%2FTnYDrNWWXRecGxV26VvaDOik0uC3SJBXeXtoIPXboVUrxVRpCbCXl9Bl9S9dJ8M6gFfZW1P1%2BoupJNA8T%2F4jUbTeGijdZVbdJVS3LVhjoUqVyyqYB%2B68R%2FKJ%2FzdeJfu%2FjXWrTJ54F8UqiM%2Bqcc79R%2FKE%2FSu9hWWfwrgN868de7gn0TxL%2FsbTtnE39djYp9Mcc78dflUo8L3SkkCst%2FBfjbJ%2F%2FdxE8T5P%2F64vKv8MyP3s38pLdlyjM%2FMxL6FNovPgiCNSb2ZzSC7Qpx%2F%2FSsUNkVcte45ZQDCAxWqFvItYOSUG%2BzX1K9teEJ5DsfsAry3Wobz6dA8UHQyIVcuZucM7H%2FSRdyFbO8VUaej7S8Wqf5tfuPLeQ6lgqtc2%2BrM4NjrulOZAZ1ruTK3eSBbAYXFojT3YNjdU6Qwiw7AcXsIH6ZYXY4NNwR6qFA%2BxygwnM3Ogc4lwPUuZwrnwbyan91HGBQGg7VHcCSZ2t8ELosf8p7QHkStM8DKqzm6TzgXB5w%2BVvxLXmBx%2Be8o6OY5Z0NWPIKDqXu6TgW%2F9Y5QJUlPZ0DnM0B6lzalc8D%2BWpQIQfQW3l3d34q5Ou96PEbaltABQK0zgKSR44UWUBUlYnVXdO5%2FlMXicMSevZf%2FOcJWPN28g4J%2FoW%2FAy9MPCF7zwWe%2FSPiBeH7AhNfkCEUs5UBXpFZKkaHH3pFE3M42E%2Bc3kJ75ycSCg9%2BrZ%2BDThokEAHqvMGd7S2gwE9uWRm5THN3dYAEe7zr4lMZ5NJA1t5A2v5AcW6kgU7GnRIPBDgndxhlSPjMG1%2BtpPln%2B72bzU4rPAfnCk8CGss5wzwR5%2FT9gT7MOdbMfkUk7p79Fotx%2Bx8%3D
