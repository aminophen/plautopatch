## Memo on TikZ/PGF support for (u)pLaTeX

主に縦組で TikZ/PGF を使えるようにするパッケージを
plautopatch.sty に登録するにあたり、調査したことをメモしておく。

### TikZ/PGF のファイルと、対応パッチの関係性

* pgfcore.sty は pgfsys.sty と graphicx.sty に依存して
  \pgfsysdriver を決定し、\pgfsysdriver.def を読み込む。
    - pxpgfmark.sty は、pgfsys-dvipdfmx.def の中で有効化されなかった
      inter-picture connections を有効にする。
* pgfsys.sty は pgfrcs.sty に依存している。
* pgfrcs.sty は内部で pgfutil-latex.def を読み込む。
  - pxpgfrcs.sty は、この pgfutil-latex.def のボックスを縦組対応させる。
* pgfutil-latex.def は everyshi.sty に依存している。
  - pxeveryshi.sty で縦組対応する。

### 対応パッチの名称などについて

* pxpgfrcs.sty という名前より pxpgf.sty などの方が良いか？
  等と考えたが、結局 pgfrcs.sty は pgffor.sty などからも読まれていて
  pgf.sty とは無関係であるため、良い代替案が見つからなかった。

2018-09-21
Hironobu Yamashita
