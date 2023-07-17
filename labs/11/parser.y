%{
#include <stdio.h>
int yylex();
void yyerror(char *);
%}

%token IDEC
%token FDEC
%token PDEC
%token VAR
%token INTEGER
%token FLOAT
%token PLUSSYMBOL
%token MINUSSYMBOL
%token MULTSYMBOL
%token DIVSYMBOL

%%
s:	expr
	|epsilon 
	;
expr:	decl
	;
decl: 	dec var
	|print var	{printf("Printing variable: ",$2"\n");}
	|var '=' oper	{printf($1, "=", $3);}
	|var '=' number
	;
dec:	IDEC
	|FDEC
	;
print:	PDEC
	;
var:	VAR	{$$=$1};
oper:	var PLUSSYMBOL var	{$$ = $1 + $3;}
	|var MINUSSYMBOL var	{$$ = $1 - $3;}
	|var MULTSYMBOL var	{$$ = $1 * $3;}
	|var DIVSYMBOL var	{$$ = $1 / $3;}
	;
number:	INTEGER
		|FLOAT
		;
epsilon:	
		; 



%%




void yyerror(char *s) {
	fprintf(stderr, "Error: %s\n",s);
}
int main(){
	printf(">> ");
	yyparse();
	return 0;
}
