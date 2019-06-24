%{
	#include <stdio.h>
	#include <stdlib.h>
	int yylex();
	void yyerror(char *);
%}
%token PTV DPT AP FP AC FC ASPSI
%token ID NUM FLOAT
%token INT DOUB CHAR ATRIB
%token WHI FOR IF ELSE ELIF SWI CASE
%token TRU FAL AND NOT OR 
%token ADD SUB MUT DIV IG  
%token MAQ MEQ IGU MEI MAI DIF

%start programa

%%
programa: declaracoes;

declaracoes :  IF AP Condicoes FP AC Atribuicao FC {printf("\nIF ACEITO\n");}
| WHI AP Condicoes FP AC Atribuicao Count FC {printf("\nWHILE ACEITO\n");}
| SWI AP ID FP CASE NUM DPT Operacoes {printf("\nCASE ACEITO\n");}
| FOR AP Condicoes Count FP AC Atribuicao FC {printf("\nFOR ACEITO\n");}
| ELSE AC Atribuicao FC {printf("\nSENAO ACEITO\n");}
| ELIF AP Comparacoes FP AC Atribuicao FC {printf("\nSENAO SE ACEITO\n");}
;

Atribuicao: ID IG NUM
| ID IG ID 
| ID IG CHAR
| ID IG DOUB
| CHAR ID 
| INT ID 
| DOUB ID  
| CHAR ID IG ASPSI ID ASPSI
| INT ID IG NUM
| DOUB ID IG FLOAT
  
Operacoes : NUM ADD NUM
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

Comparacoes :  NUM MAQ NUM
| NUM MEQ NUM
| NUM IGU NUM
| NUM DIF NUM
| ID MEQ ID
| ID MAQ ID 
| ID IGU ID 
| ID DIF ID
;

Condicoes :  NUM MAQ NUM
| NUM MEQ NUM
| NUM IGU NUM
| NUM DIF NUM
| NUM MAQ NUM AND NUM MAQ NUM
| NUM MAQ NUM AND NUM MEQ NUM
| ID MAQ ID
| ID MEQ ID
| ID IGU ID
| ID DIF ID
| ID MAQ ID AND ID MAQ ID
| ID MAQ ID AND ID MEQ ID
;

Count :  NUM ADD ADD
| NUM SUB SUB
| ID ADD ADD
| ID SUB SUB
|
;

%%
void yyerror(char *s){
	fprintf(stderr, "%s\n", s);
}
int main(void){
	return yyparse();
}