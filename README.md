# 卒業論文スタイルファイル - 和歌山大学システム工学部社会情報学メジャー向け

卒業論文をpLaTeXを用いて作成する人のためのスタイルファイルです．

## コンパイル方法

スタイルファイル```wuse_thesis.sty```とサンプル卒論ファイル```thesis_sample.tex```を同じディレクトリに置き，```thesis_sample.tex```を```platex```でコンパイルしてください（必要に応じて複数回実行してください）．

    $ platex thesis_sample.tex

## 卒業論文の表紙について

タイトルページ（表紙）を生成するため，最初に以下の情報を記述してください．

- タイトル ```\title```
- 氏名 ```\author```
- 学位
  - 学士 ```\bachelor```
  - 修士 ```\master```
- 所属 ```\department```
- 学生番号 ```\sutudentid```
- 卒業年度 ```\gyear```
- 提出日 ```\date```

## 出力例

```thesis_sample.pdf```は，```thesis_sample.tex```をコンパイルした```thesis_sample.dvi```から```dvipdfmx```によりPDF化した例です．
