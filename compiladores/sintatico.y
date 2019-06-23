%{
	#include <stdio.h>
	#include <stdlib.h>
	int yylex();
	void yyerror(char *);
%}

%token	CPF IP BIN HEXA OCT NUM FLOAT IN DOM WHI FOR ASP ID STR IF AND NOT OR AP FP AC FC ADD SUB MUT DIV DIF MAQ MEQ MEI MAI IGU
%start programa

%%
programa: 
		 | programa S
		 ;
S : NUM	{printf("\nNUMERO ACEITO\n");}
| ID	{printf("\nID ACEITO\n");}
| STR ASP ID ASP	{printf("\nSTRING ACEITA \n");}
| FLOAT	{printf("\nPONTO FLUTUANTE ACEITO \n");}
| IF AP Expr1 FP AC Expr1 FC {printf("\nIF ACEITO\n");}
| WHI AP Expr2 FP AC Expr1 Count FC {printf("\nWHILE ACEITO\n");}
| FOR AP Expr3 Count FP AC Expr1 FC {printf("\nFOR ACEITO\n");}
| STR IN STR DOM {printf("\nEMAIL ACEITO\n");}
| CPF	{printf("\nCPF ACEITO \n");}
| IP	{printf("\nIP ACEITO \n");}
| BIN	{printf("BINARIO ACEITO \n");}
| HEXA	{printf("HEXADECIMAL ACEITO \n");}
| OCT	{printf("OCTAL ACEITO \n");}
;

Expr1 : NUM ADD NUM
| NUM SUB NUM
| FLOAT ADD FLOAT
| FLOAT SUB FLOAT
| NUM ADD FLOAT
| NUM SUB FLOAT
| FLOAT ADD NUM
| FLOAT SUB NUM
| NUM MAQ NUM
| NUM MEQ NUM
| NUM IGU NUM
;

Expr2 :  NUM MAQ NUM
| NUM MEQ NUM
| NUM IGU NUM
| NUM DIF NUM
;

Expr3 :  NUM MAQ NUM
| NUM MEQ NUM
| NUM IGU NUM
| NUM DIF NUM
| NUM MAQ NUM AND NUM MAQ NUM
| NUM MAQ NUM AND NUM MEQ NUM
;

Count :  NUM ADD ADD
| NUM SUB SUB
;

%%
void yyerror(char *s){
	fprintf(stderr, "%s\n", s);
}
int main(void){
	return yyparse();
}