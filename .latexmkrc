#!/usr/bin/env perl
$latex            = 'platex -synctex=1 -halt-on-error %O %S';
$latex_silent     = 'platex -synctex=1 -halt-on-error -interaction=batchmode %O %S';
$bibtex           = 'pbibtex %O %B';
$dvipdf           = 'dvipdfmx %O %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;

# generates pdf via dvipdfmx
$pdf_mode         = 3;

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

$pdf_previewer    = 'evince %O %S&'
