#!/usr/bin/env perl
$latexargs        = '-shell-escape -synctex=1 -halt-on-error';
$latexsilentargs  = $latexargs . '-interaction=batchmode';
$latex            = 'platex ' . $latexargs;
$latex_silent     = 'platex ' . $latexsilentargs;
$dvipdf           = 'dvipdfmx -f genshin.map %O -o %D %S';
$bibtex           = 'pbibtex %O %B';
$biber            = 'biber --bblencoding=utf8 -u -U --output_safechars';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;

# 0: PDFを生成しない | 1: pdflatex | 2: ps2pdf | 3: dvipdfmx
$pdf_mode         = 3;
$aux_dir          = 'work';

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# プレビューアの設定
$pdf_previewer    = 'evince %S&';
