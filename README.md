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
[diagrams.net](https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Warigam%20Diagram.drawio#R7V1bc9o4GP01zOw%2BJOMrl0cgt7bQpiS7W54yClbArWw5QgTIr18ZyzYgQ%2BxgDL7MZKZIiA%2F7%2B47OsXXkUlO71uKWAGfSxwZENUUyFjX1qqYosqbU2T9uz9LradSbXseYmAYfFHY8mO%2BQd0q8d2YacLoxkGKMqOlsdo6wbcMR3egDhOD55rAXjDa%2F1QFjKHQ8jAASe%2F8zDTrxeptKI%2By%2Fg%2BZ44n%2BzXG9571jAH8zPZDoBBp6vdanXNbVLMKbeK2vRhchNnp8X%2BrP3al317%2Fvz4ddl2%2BxRPF5ceMFuknwkOAUCbZpuaMUL%2FQbQjOdrNoVkyk%2BYLv0ssnN33JcUPLtdnSkFhPJiqxLrYOWjwLQhYR3yqo0QcKbmarjXMzGR0QNLPKN%2BIL%2FVeTEX0Bh4tXbHsrL3WDC36QZ%2FYcEf%2BMG4bwNkjm32esTy4X5jh8ApO5YemFI%2BImbGeGbfIKFwsYYXnsFbiC1IyZIN4e9qDQ4GPhu0Fm%2FPQ2zJTd43WceVPxBwPI%2BD2GHN2AtetgQlVIUS7q%2FewMVwZ4KJ%2Be7WDPEcr1d01Z6bFgI2mxzA2Orq4BUZrCpjItTFCLtlt7ENhcq7gwyCnUdAxpDyDgebNl3lQe%2BwP5aZrnSp13R2rF3WlsM2%2B3OHE9rF9pQShjA3BmSFnkO32B2KHR4UwRc%2FPuF5d18%2FY0qxlQwWSmxYcBioMVGgHgsEmgCC%2B287YcDOn5oADRjdAnuMvKKt2BeERYuobGSug%2FxuJ3570mKWzhe0ItCJaRjQjl8PNXY91gqgJsw%2FDxZmJXE0gBgb2YCyCTKzjalQ1OA4P19nXagzG37aOvtk7I3tTB0wMu1xz%2FtkfQsIelZAWOyemHqqwIgVLgNk1CsZiCUD0hFloH5qGWjEB0E25AAN0493oAbUYxej6BrQFIpsAwueuwpElX5dGaTUcVA6CWhVEnByCYh7P3g0CfDXXYqoAa3Y1Si6BsiyUOXZ%2Bd8JZFL6ItM%2BmjeVO7t%2BLQ3e3%2Fu977A16L9eJJjwFe0fifZlJUPej0SBSAh5pP29AC8V7UdmQlyudwh%2BMw1IikH9B5a%2FdNRfrf2fAfXrp6Z%2BcfG%2FMNRfypX%2FyEyIK%2F%2BOOaIzAp9mBBWY%2Fasl%2F903gSIm4Bt02XWvCNQq%2Bz7g7rgr9sez7%2BXKuEndvw8mRn4MfFm0bork4MuVfROkQvRvzn%2FlLkUPPwEUSqfo%2FmFUYpDeDV1yMTi5ja%2BLi3k3pxaD9FycAOSVFujigp67%2F%2Fbp%2FAUhm%2FqXTgDkysM%2FAwE4uYmvJLgOyBv9y%2FGt3KLTvyLqPDUpyuVervSrXzry9yd5Rf6nJP9MrfxoHCSw9fLG%2FgHGK%2FZXRN%2FOwkaRyT9B8ctH%2FqKZU5F%2F9uSfpZkfjYMEflDuyD9%2BPQpP%2FqLfY0HruSgbuQ4tf%2BnoXxUvBgjGVmXl74JGwy%2BS7%2BDGtXADzz%2F9J%2FErCU%2Fdyg%2FmRX6sfFVU8CJZ%2BWol4kEqRBE%2Ff%2BcmzcfxK0HfnRtxm0clBgfezyUXg5Nb%2Bapo6BXIyg9AXmmBJlp2xbfyE9S%2FdAKgJXgirxKAYwnAya18TRFgUCAB0OLftxdeAETXbvU0RrEVIAEAiqwAg3s6UXDre%2F2WaO0vczrp1PXqwfzEAiCgKLYmnIedHwmD%2FD6Z%2F0E5doO%2B0Owfedqiyjtgabmpyi33p1j9IlN%2F%2B%2FGP9tr%2FAg3ZaalSb9xsDodRO%2FgFIKwW4jxalxWX%2BKmF%2BJSEttF2%2F%2B9r1rwesLI%2F4j6wl74WhG9ZwDZ%2BrFBB3FOBvh6wIpHlL7dxqfvNYRCbNa4W6yOvfNGAC5P%2B8sex18MwBGuFH3IbwWeMMfTXE5kcTPAY2wBdh70JLaApnpER3DOOL69TX7f2C4MiuQcY98pUlqIcI7%2BTQASo%2BQY35sQekN67ahrCX%2FFlh0uT0tgCpnfq%2FFMhKIVA6lYgeTuQlxshUGrojrFB7QTolj5Cd9ZI9fef5A%2BqurSJMO2zUK1vBVKPB9Ufb2rz4mky%2FI1%2B3D3d9qZXv4danGvwYyKV82nIocO1d3bw6Se5O2XsKjGh62P8fKC7vTGg%2BUnoNpXNQLpyNOiaPw3p1bYbjtLp3PW%2BXgxuH5wI6I6B9bzn6YCybwkJLv4CWdSF683g1zxS3xISWcNqDfiQHSF7p8UhG0IiUZDGAkDkEYv3hjndD7IX4qVaAY7MhHhVfP5Lv5%2FbDXIgEPYsB7RSBUascBkgI8H%2F0FZqGYi%2Bjk1HBiK2gmQrAwl2h57ZOvCHxYhvyxZdA8S9nxSzCfwELPaVOV4MThECpWP%2FBL%2FKUrH%2Fkdg%2FYh9ItuyfYDto3ti%2FEbsYRWd%2FcbOnA7GD4JM9857tkv76%2Fk%2BvV7tu1trNGptG13qteVNr3%2FydR2X44Od7DsRK6WQiyS%2B3VDpxJJ2I2i6SrVBE%2FLRLPjcM7gd5JRayuC5YrA2DhwKgyAowGLT%2F7dgP32xpLv95AeBXZzZP06wMHcnEpnpt3VIPPcgPtoxIl63Whsl5Kalqba%2FRyRr3kJgsaytn6jATc9%2FVxscmJr9wOxsTU9syMXVtC41xTcxtN1TbDvRpE5M1CcZ0fTgBzqSPDeiO%2BB8%3D)
