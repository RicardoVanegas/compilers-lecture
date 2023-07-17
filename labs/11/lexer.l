%{
#include "y.tab.h"
%}

%%
i	{ return IDEC;}
f	{ return FDEC;}
p	{ return PDEC;}
[a-z] 	 { yylval.strval = strdup(yytext); return VAR; }
[0-9]*'.'[0-9]+	{ yylval.numval = atof(yytext); return FLOAT; }
[0-9]+ 	{ yylval.numval = atoi(yytext); return INTEGER; }
'+' 	{ yylval = strdup(yytext); return PlUSSYMBOL; }
'-'	{ yylval = strdup(yytext); return MINUSSYMBOL; }
'*'	{ yylval = strdup(yytext); return MULTSYMBOL; }
'/'	{ yylval = strdup(yytext); return DIVSYMBOL; }
.	;
%%

int yywrap(){
	return 1;
}
