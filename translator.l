%{
    #include "translator.tab.h"
    #include <string.h>
    #include <stdlib.h>
void yyerror (char *s);
int yylex();
%}
%%
koul|kolou|kanakel|katakli|klit|kataklo|n3es|n3so|na3es|na3essa|na3essine|fi9|faye9|faye9a|faye9in|fi9ou|chareb|chrb|chrbo|d7k|da7ek|da7eka|da7ekine|d7ko|hareb|harebin|hareba|hrb|hrbo|l3b|l3bo|la3eb|la3eba|la3ebine|drb|drbo|mdareb|mdareba|mdarbin|ktb|ktbo|kankteb|kateba|katebin|sm3|kansme3|sm3o|ch3l|ch3lo|cha3ela|cha3el|tafi|tfi|tafya|tfiw|7sb|7sbo|3awd|3awdo|lbss|labess|labessa|lbssou|7bs|7abess|7abessa|7bsou|glss|glssou|galess|galessa|galessine {yylval.stringValue=strdup(yytext);return VERBE;}
atansiou|attanssiyou|aurjou3|babor|balcone|baliza|ballone|balone|balto|banda|banka|barabole|dheb|barassioun|barbrise|barmeta|barra|barteyya|bart9iz|barwita|fdarna|fdar|matchkora|tiniss|chfara|bolis|tacos|leghda|le3sha|3lihom|3lina|lma|monada|3assir|sdari|lbit|salon|zen9a|mdrassa|mktaba|9issem|bilal|aghani|doross|telfaza|dow|lflouss|7wayej|hdra|korsi|lard {yylval.stringValue=strdup(yytext);return NOM;}
knt|knti|kan|kanet|kna|kntou|kanou {yylval.stringValue=strdup(yytext);return ETRE_IMPARFAIT;}
ana|howa|hia|nta|ntia|7na|houma|ntouma|nti {yylval.stringValue=strdup(yytext);return PRONOM;}
walakin|fin|O|7ta|illa|7it|m3a {yylval.stringValue=strdup(yytext);return CONJONCTION;}
ghayb|ghayba|ghaybin|ghaybat|ji3an|ji3ana|ji3anin|ji3anate|m3etel|m3etela|m3telin|m3etelat|9dim|9dima|9damin|9damat|momil|momila|momilin|momilate|fr7an|fr7ana|fr7anin|fr7anat|mchoki|mchokia|mchokin|zwin|zwina|zwinin|zwinat|jdid|jdida|jdad|9dam|9dim|9dima {yylval.stringValue=strdup(yytext);return ADJECTIF;}
[ \t\n]                ;
.                      {ECHO; yyerror ("unexpected character");}

%%
int yywrap () {
    return 1;
}

