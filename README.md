# plautopatch

Japanese pLaTeX/upLaTeX formats and packages often conflict
with other LaTeX packages which are aware of pLaTeX/upLaTeX.
In the worst case, such packages throw an fatal error or
end up with a wrong output.

The goal of this package "plautopatch" is that
there is no need to worry about such incompatibilities,
by automatically loading specific patches
when they are necessary.
This helps not only to simplify source files, but also
to make the appearance of working pLaTeX/upLaTeX sources
similar to ordinally LaTeX.

The following patches are currently registered:

- tracefnt (latex) -> ptrace/uptrace (platex/uplatex)
- fltrace (latex) -> pfltrace (platex)
- array (latex-tools) -> plarray (platex-tools)
- array (latex-tools) + plext (platex) -> plextarray (platex-tools)
- delarray (latex-tools) + plext (platex) -> plextdelarray (platex-tools)
- everysel (ms) -> pxeverysel (platex-tools)
- everyshi (ms) -> pxeveryshi (platex-tools)
- atbegshi (oberdiek) -> pxatbegshi (platex-tools)
- ftnright (latex-tools) -> pxftnright (platex-tools)
- pdfpages -> pxpdfpages (maintained here!)

## Miscellaneous

This bundle may distribute some tiny patches
together with the main package. Short information:

- pxpdfpages.sty:
    Patch for pdfpages.sty (by An­dreas Matthias) to support
    Japanese-style crop marks (called 'tombow' in Japanese).
    Can be used on pLaTeX/upLaTeX.

## Installation

- *.sty -> $TEXMF/tex/platex/plautopatch
- *.tex, *.pdf -> $TEXMF/doc/platex/plautopatch

## Repository

The bundle is maintained on GitHub:
  https://github.com/aminophen/plautopatch

## License

The bundle may be distributed and/or modified under the terms of
the 3-clause BSD license (see [LICENSE](./LICENSE)).

## Release Date

$RELEASEDATE

Hironobu Yamashita
