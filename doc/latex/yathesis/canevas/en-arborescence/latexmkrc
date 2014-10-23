$pdf_mode = 1;

$bibtex_use = 1;
$bibtex = 'biber %O %B';

add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('glo2', 'gls2', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');
add_cus_dep('slo', 'sls', 0, 'makeglossaries');
sub makeglossaries{
    system( "makeglossaries \"$_[0]\"" );
}

$makeindex = 'texindy -L french';

add_cus_dep('idx', 'ind', 0, 'texindy');
sub texindy{
    system("texindy -L french \"$_[0].idx\"");
}

@generated_exts = qw(aux idx ind lo* out toc acn acr alg bbl bcf fls gl* ist
run.xml sbl* sl* sym* xdy unq synctex.gz mw *~
);
