$pdflatex = 'xelatex %O %S';
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;

$bibtex = 'biber %O %B';
$bibtex_use = 2;

$quote_filenames = 0;

add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('glo2', 'gls2', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');
add_cus_dep('slo', 'sls', 0, 'makeglossaries');
sub makeglossaries{
    system( "makeglossaries \"$_[0]\"" );
}

add_cus_dep('idx', 'ind', 0, 'texindy');
sub texindy{
    system("texindy -L french \"$_[0].idx\"");
}

@generated_exts = qw(db* listing tcbtemp aux idx ind lof lot out toc acn acr alg glg* glo* gls* ins sbl slg sym ist run.xml xdy lol fls unq synctex.gz mw *~);
