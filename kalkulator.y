%token BROJ PROMENLJIVA
%left '+' '-'
%left '*' '/'

%{
    #include <stdio.h>
    void yyerror(char *);
    int yylex(void);
    int sym[26];
%}

%%

program:
        program iskaz '\n'
        | 
        ;

iskaz:
        izraz                      { printf("%d\n", $1); }
        | PROMENLJIVA '=' izraz    { sym[$1] = $3; }
        ;

izraz:
        BROJ
        | PROMENLJIVA               { $$ = sym[$1]; }
        | izraz '+' izraz           { $$ = $1 + $3; }
        | izraz '-' izraz           { $$ = $1 - $3; }
        | izraz '*' izraz           { $$ = $1 * $3; }
        | izraz '/' izraz           { $$ = $1 / $3; }
        | '(' izraz ')'             { $$ = $2; }
        ;

%%

void yyerror(char *s) {
    printf("%s\n", s);
}

int main(void) {
    int i;
    for(i = 0; i < 26; i++)
    sym[i]=0;
    yyparse();
    return 0;
}