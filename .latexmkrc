#!/usr/bin/env perl

$pdf_mode = 3;
$latex = 'platex -kanji=utf8 -synctex=1 -file-line-error -halt-on-error -interaction=nonstopmode %O %S';
$bibtex = 'pbibtex %O %B';
$dvipdf = 'dvipdfmx %O -o %D %S';

$biber = 'biber --bblencoding=utf8 -u -U %O %S';
$makeindex = 'mendex %O -o %D %S';
