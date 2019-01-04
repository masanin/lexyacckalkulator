%{
    #include <stdio.h>
    #include <stdlib.h>
    #include "y.tab.h"
    extern int yylval;
%}
%%
[a-z] {yylval = yytext[0]- 'a'; 
return PROMENLJIVA;}
[0-9]+  { yylval = atoi(yytext); 
      return BROJ;}
[-+()=/*\n] {return yytext[0];}
[ \t]   ;
.   {return yytext[0];}
%%
